#include "llvm/CUSTOM_OPTS/TripleBracketsMul.h"

#include <cassert>
#include <set>

#include "llvm/ADT/APInt.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/PatternMatch.h"
#include "llvm/Support/Casting.h"
#include "llvm/Transforms/Utils/ScalarEvolutionExpander.h"

using namespace llvm;
using namespace PatternMatch;

void collectSCEVUnknowns(const SCEV *S, int depth,
                          std::set<const SCEV *> &uniqueUnknownExprs) {
  if (S->getSCEVType() == scUnknown) {
    uniqueUnknownExprs.insert(S);
  }

  for (const SCEV *Op : S->operands()) {
    collectSCEVUnknowns(Op, depth + 1, uniqueUnknownExprs);
  }
}

std::vector<custom_opts::FoundInstructionAndVariables *>
custom_opts::FindTripleBracketsMul(Function &func,
                                   FunctionAnalysisManager &manager) {
  std::vector<custom_opts::FoundInstructionAndVariables *> result{};
  ScalarEvolution &SE = manager.getResult<ScalarEvolutionAnalysis>(func);

  for (BasicBlock &block : func) {
    for (Instruction &inst : block) {
      if (auto *binOp = dyn_cast<BinaryOperator>(&inst)) {
        const SCEV *scev = SE.getSCEV(binOp);

        std::set<const SCEV *> unknownsSet;
        collectSCEVUnknowns(scev, 0, unknownsSet);

        if (unknownsSet.size() == 3) {
          std::vector<const SCEV *> unknownsVector(unknownsSet.begin(), unknownsSet.end());
          do {
            const SCEV *V0 = unknownsVector[0];
            const SCEV *V1 = unknownsVector[1];
            const SCEV *V2 = unknownsVector[2];

            llvm::DataLayout DL = inst.getModule()->getDataLayout();
            unsigned intWidth = DL.getTypeSizeInBits(inst.getType());

            // ((((2 * (%0 + %1)) + %2) * %2) + ((%0 + %1) * (%0 + %1)))
            const SCEV *AddExpr = SE.getAddExpr(V0, V1);
            const SCEV *MulExpr1 =
                SE.getMulExpr(SE.getConstant(APInt(intWidth, 2)), AddExpr);
            const SCEV *AddExpr2 = SE.getAddExpr(MulExpr1, V2);
            const SCEV *MulExpr2 = SE.getMulExpr(AddExpr2, V2);
            const SCEV *AddExpr3 = SE.getAddExpr(V0, V1);
            const SCEV *MulExpr3 = SE.getMulExpr(AddExpr3, AddExpr3);
            const SCEV *ExpectedSCEV = SE.getAddExpr(MulExpr2, MulExpr3);

            if (scev == ExpectedSCEV) {
              errs() << "\nInstruction is found.\n";
              custom_opts::FoundInstructionAndVariables *newInst =
                  new custom_opts::FoundInstructionAndVariables;
              newInst->binOp = binOp;

              const SCEVUnknown *var0 = dyn_cast<SCEVUnknown>(V0);
              llvm::Value *value0 = var0->getValue();
              newInst->var1 = value0;

              const SCEVUnknown *var1 = dyn_cast<SCEVUnknown>(V1);
              llvm::Value *value1 = var1->getValue();
              newInst->var2 = value1;

              const SCEVUnknown *var2 = dyn_cast<SCEVUnknown>(V2);
              llvm::Value *value2 = var2->getValue();
              newInst->var3 = value2;

              result.push_back(newInst);
              break;
            }
          } while (std::next_permutation(unknownsVector.begin(), unknownsVector.end()));
        }
      }
    }
  }
  return result;
}

Value *custom_opts::ConvertTripleBracketsMul(
    custom_opts::FoundInstructionAndVariables *foundInst, Function &func) {
  assert(foundInst->binOp && "binOp instruction is null");
  assert(foundInst->var1 && "var1 is null");
  assert(foundInst->var2 && "var2 is null");
  assert(foundInst->var3 && "var3 is null");

  IRBuilder<> builder{foundInst->binOp};
  Value *add1 = builder.CreateAdd(foundInst->var1, foundInst->var2, "add1");
  Value *add2 = builder.CreateAdd(add1, foundInst->var3, "add2");
  Value *mul = builder.CreateMul(add2, add2, "mul");

  foundInst->binOp->replaceAllUsesWith(mul);
  foundInst->binOp->eraseFromParent();
  delete foundInst;

  return mul;
}
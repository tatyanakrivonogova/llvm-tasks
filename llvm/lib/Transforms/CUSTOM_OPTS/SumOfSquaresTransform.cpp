#include "llvm/Transforms/CUSTOM_OPTS/SumOfSquaresTransform.h"

#include <cassert>

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/InitializePasses.h"
#include "llvm/Support/Casting.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

namespace custom_opts {

static constexpr char PassName[] = "custom-opts-sum-of-squares-transform";
static constexpr char PassDescription[] = "Collapses sum of squares";

} // namespace custom_opts

llvm::PreservedAnalyses custom_opts::SumOfSquaresTransform::run(
    llvm::Function &func, llvm::FunctionAnalysisManager &manager) {
  auto &targetLoops = manager.getResult<SumOfSquaresAnalysis>(func);
  bool modified = run(targetLoops, func);
  return modified ? llvm::PreservedAnalyses::none()
                  : llvm::PreservedAnalyses::all();
}

bool custom_opts::SumOfSquaresTransform::run(
    const custom_opts::TargetLoops &targetLoops, llvm::Function &func) {
  bool modified{false};
  // Functions marked explicitly 'optnone' should be ignored since we shouldn't
  // be changing anything in them anyway.
  if (targetLoops.function()->hasFnAttribute(llvm::Attribute::OptimizeNone)) {
    return modified;
  }

  //   for (llvm::Loop* loop : targetLoops.targetLoops())
  //   {
  //     // auto *Loop = llvm::dyn_cast<llvm::ForInstruction>(&loop);
  //     auto *IV = llvm::dyn_cast<llvm::BinaryOperator>(loop->getIndVar());
  //     // Заменяем цикл формулой n*(n+1)(2n+1)/6
  //     unsigned n =
  //     llvm::cast<llvm::ConstantInt>(IV->getOperand(1))->getZExtValue();
  //     unsigned replacement = n * (n + 1) * (2 * n + 1) / 6;

  //     // Создаем новую инструкцию для замены цикла
  //     llvm::IRBuilder<> Builder(loop->getParent());
  //     auto *NewLoop = Builder.CreateNUWMul(Builder.getInt32(n),
  //     Builder.getInt32(replacement));

  //     // Заменяем цикл новой формулой
  //     loop.replaceAllUsesWith(NewLoop);
  //     loop.eraseFromParent();

  //     modified = true;
  //   }

  for (llvm::BasicBlock &BB : func) {
    for (llvm::Instruction &I : BB) {
      if (auto *op = llvm::dyn_cast<llvm::BinaryOperator>(&I)) {
        if (op->getOpcode() == llvm::Instruction::Mul &&
            op->getNumOperands() == 3) {
          llvm::ConstantInt *const1 =
              llvm::dyn_cast<llvm::ConstantInt>(op->getOperand(0));
          llvm::ConstantInt *const2 =
              llvm::dyn_cast<llvm::ConstantInt>(op->getOperand(1));
          llvm::ConstantInt *const3 =
              llvm::dyn_cast<llvm::ConstantInt>(op->getOperand(2));

          if (const1 && const2 && const3) {
            if (const1->getValue().getSExtValue() == 1 &&
                const2->getValue().getSExtValue() == 1 &&
                const3->getValue().getSExtValue() == 6) {

              llvm::IRBuilder<> builder(op);
              llvm::Value *n = op->getOperand(0);
              llvm::Value *replacement = builder.CreateMul(
                  builder.CreateMul(n,
                                    builder.CreateAdd(n, builder.getInt64(1))),
                  builder.CreateAdd(builder.CreateMul(n, builder.getInt64(2)),
                                    builder.getInt64(1)));

              op->replaceAllUsesWith(replacement);
              op->eraseFromParent();
            }
          }
        }
      }
    }
  }
  modified = true;

  return modified;
}
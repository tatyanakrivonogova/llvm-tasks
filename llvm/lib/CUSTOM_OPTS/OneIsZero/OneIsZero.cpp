#include "llvm/CUSTOM_OPTS/OneIsZero.h"

#include <cassert>

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/PatternMatch.h"
#include "llvm/Support/Casting.h"

using namespace llvm;
using namespace PatternMatch;

static bool matchesPredicate(BinaryOperator &I, Value *&A, Value *&B) {

  // (a == 0 && b != 0) || (a != 0 && b == 0)
  CmpInst::Predicate Pred1;
  CmpInst::Predicate Pred2;
  CmpInst::Predicate Pred3;
  CmpInst::Predicate Pred4;
  if (!match(&I, m_c_Or(m_c_And(m_Cmp(Pred1, m_Value(A), m_Zero()),
                                m_Cmp(Pred2, m_Value(B), m_Zero())),
                        m_c_And(m_Cmp(Pred3, m_Deferred(A), m_Zero()),
                                m_Cmp(Pred4, m_Deferred(B), m_Zero()))))) {
    // printf("false\n");
    return false;
  }
  if (Pred1 == CmpInst::Predicate::ICMP_EQ &&
      Pred2 == CmpInst::Predicate::ICMP_NE &&
      Pred3 == CmpInst::Predicate::ICMP_NE &&
      Pred4 == CmpInst::Predicate::ICMP_EQ) {
    // printf("true\n");
    return true;
  }
  if (Pred1 == CmpInst::Predicate::ICMP_NE &&
      Pred2 == CmpInst::Predicate::ICMP_EQ &&
      Pred3 == CmpInst::Predicate::ICMP_EQ &&
      Pred4 == CmpInst::Predicate::ICMP_NE) {
    // printf("true\n");
    return true;
  }
  return false;
}

std::vector<BinaryOperator *>
custom_opts::FindOneIsZeroPredicates(Function &func) {
  std::vector<BinaryOperator *> foundInsts{};
  for (BasicBlock &block : func) {
    for (Instruction &inst : block) {
      if (auto *binOp = dyn_cast<BinaryOperator>(&inst)) {
        Value *A, *B;
        if (matchesPredicate(*binOp, A, B)) {
          foundInsts.push_back(binOp);
        }
      }
    }
  }
  return foundInsts;
}

Value *custom_opts::ConvertOneIsZeroPredicate(BinaryOperator *binOp,
                                              Function &func) {
  // printf("Convert one is zero predicate\n");
  assert(binOp && "binOp instruction is null");

  IRBuilder<> builder{binOp};
  Value *A, *B;

  if (matchesPredicate(*binOp, A, B)) {
    // (a == 0) != (b == 0)
    Value *cmp1 =
        builder.CreateCmp(CmpInst::Predicate::ICMP_EQ, A,
                          ConstantInt::get(A->getType(), 0), "a.is.zero");
    Value *cmp2 =
        builder.CreateCmp(CmpInst::Predicate::ICMP_EQ, B,
                          ConstantInt::get(B->getType(), 0), "b.is.zero");
    Value *cmp =
        builder.CreateCmp(CmpInst::Predicate::ICMP_NE, cmp1, cmp2, "cmp");
    binOp->replaceAllUsesWith(cmp);
    binOp->eraseFromParent();

    return cmp;
  } else {
    return nullptr;
  }
}
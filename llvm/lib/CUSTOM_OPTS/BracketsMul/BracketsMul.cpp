#include "llvm/CUSTOM_OPTS/BracketsMul.h"

#include <cassert>

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/PatternMatch.h"
// #include "llvm/Support/Casting.h"

using namespace llvm;
using namespace PatternMatch;

static bool matchesBracketsMul(BinaryOperator &I, Value *&X, Value *&A,
                               Value *&B) {
  constexpr unsigned MulOp = Instruction::Mul;
  constexpr unsigned AddOp = Instruction::Add;

  // (((A + X) + B) * X) + (B * A)
  if (match(&I,
            m_c_BinOp(AddOp,
                      m_BinOp(
                          MulOp,
                          m_BinOp(AddOp, m_BinOp(AddOp, m_Value(A), m_Value(X)),
                                  m_Value(B)),
                          m_Deferred(X)),
                      m_BinOp(MulOp, m_Deferred(B), m_Deferred(A)))))
    return true;
  if (match(&I,
            m_c_BinOp(AddOp,
                      m_BinOp(
                          MulOp,
                          m_BinOp(AddOp, m_BinOp(AddOp, m_Value(X), m_Value(A)),
                                  m_Value(B)),
                          m_Deferred(X)),
                      m_BinOp(MulOp, m_Deferred(B), m_Deferred(A)))))
    return true;

  // (B * X) + ((A * X) + ((A * B) + (X * X)))
  if (match(&I,
            m_c_BinOp(
                AddOp, m_BinOp(MulOp, m_Value(B), m_Value(X)),
                m_BinOp(
                    AddOp, m_BinOp(MulOp, m_Value(A), m_Deferred(X)),
                    m_BinOp(AddOp, m_BinOp(MulOp, m_Deferred(A), m_Deferred(B)),
                            m_BinOp(MulOp, m_Deferred(X), m_Deferred(X)))))))
    return true;
  if (match(&I,
            m_c_BinOp(
                AddOp, m_BinOp(MulOp, m_Value(X), m_Value(B)),
                m_BinOp(
                    AddOp, m_BinOp(MulOp, m_Value(A), m_Deferred(X)),
                    m_BinOp(AddOp, m_BinOp(MulOp, m_Deferred(A), m_Deferred(B)),
                            m_BinOp(MulOp, m_Deferred(X), m_Deferred(X)))))))
    return true;

  return false;
}

std::vector<BinaryOperator *> custom_opts::FindBracketsMul(Function &func) {
  std::vector<BinaryOperator *> foundInsts{};
  for (BasicBlock &block : func) {
    for (Instruction &inst : block) {
      if (auto *binOp = dyn_cast<BinaryOperator>(&inst)) {
        Value *X, *A, *B;
        if (matchesBracketsMul(*binOp, X, A, B)) {
          foundInsts.push_back(binOp);
        }
      }
    }
  }
  return foundInsts;
}

Value *custom_opts::ConvertBracketsMul(BinaryOperator *binOp, Function &func) {
  // printf("Convert brackets mul\n");
  assert(binOp && "binOp instruction is null");

  IRBuilder<> builder{binOp};
  Value *X, *A, *B;

  if (matchesBracketsMul(*binOp, X, A, B)) {
    Value *add1 = builder.CreateAdd(X, A, "x.plus.a");
    Value *add2 = builder.CreateAdd(X, B, "x.plus.b");
    Value *mul = builder.CreateMul(add1, add2, "mul");
    binOp->replaceAllUsesWith(mul);
    binOp->eraseFromParent();

    return mul;
  } else {
    return nullptr;
  }
}
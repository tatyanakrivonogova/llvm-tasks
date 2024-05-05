#include "llvm/CUSTOM_OPTS/BracketsMul.h"

#include <cassert>

#include "llvm/IR/BasicBlock.h"
#include "llvm/Support/Casting.h"
#include "llvm/IR/PatternMatch.h"
#include "llvm/IR/IRBuilder.h"

using namespace llvm;
using namespace PatternMatch;

template <bool FP>
static bool matchesBracketsMul(BinaryOperator &I, Value *&X, Value *&A,
                               Value *&B) {
  constexpr unsigned MulOp = FP ? Instruction::FMul : Instruction::Mul;
  constexpr unsigned AddOp = FP ? Instruction::FAdd : Instruction::Add;

  if (match(&I, m_c_BinOp(
                      AddOp,  m_OneUse(m_BinOp(MulOp, m_BinOp(AddOp, m_BinOp(AddOp, m_Value(A), m_Value(X)),
                                          m_Value(B)),
                                          m_Deferred(X))
                                       ),
                              m_OneUse(m_BinOp(MulOp, m_Deferred(B), m_Deferred(A)))
                              ))) 
  {
    return true;
  }

  return match(&I, m_c_BinOp(
                      AddOp,  m_OneUse(m_BinOp(MulOp, m_Value(B), m_Value(X))),
                              m_OneUse(m_BinOp(AddOp, m_BinOp(MulOp, m_Value(A), m_Deferred(X)),
                                          m_BinOp(AddOp, m_BinOp(MulOp, m_Deferred(A), m_Deferred(B)),
                                          m_BinOp(MulOp, m_Deferred(X), m_Deferred(X))))
                                       )
                              ));

}

std::vector<llvm::BinaryOperator*> custom_opts::FindBracketsMul(llvm::Function& func)
{
  std::vector<llvm::BinaryOperator*> foundInsts{};
  for (llvm::BasicBlock& block : func)
  {
    for (llvm::Instruction& inst : block)
    {
      if (auto* binOp = llvm::dyn_cast<BinaryOperator>(&inst)) {
        Value *X, *A, *B;
        if (matchesBracketsMul</*FP*/ true>(*binOp, X, A, B)) {
          foundInsts.push_back(binOp);
        }
      }
    }
  }
  return foundInsts;
}


llvm::Value* custom_opts::ConvertBracketsMul(llvm::BinaryOperator* binOp, llvm::Function& func)
{
  assert(binOp && "binOp instruction is null");

  llvm::IRBuilder<> builder{binOp};
  llvm::Value *X, *A, *B;
  
  if (matchesBracketsMul</*FP*/ true>(*binOp, X, A, B)) {
    llvm::Value* add1 = builder.CreateFAdd(X, A, "add1");
    llvm::Value* add2 = builder.CreateFAdd(X, B, "add2");
    llvm::Value* mul = builder.CreateFMul(add1, add2, "mul");
    binOp->replaceAllUsesWith(mul);
    binOp->eraseFromParent();
    
    return mul;
  } else {
    return nullptr;
  }
}
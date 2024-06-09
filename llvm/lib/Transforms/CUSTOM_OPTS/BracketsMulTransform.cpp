#include "llvm/Transforms/CUSTOM_OPTS/BracketsMulTransform.h"

#include <cassert>

#include "llvm/CUSTOM_OPTS/BracketsMul.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/InitializePasses.h"
#include "llvm/Pass.h"

llvm::PreservedAnalyses
custom_opts::BracketsMulTransform::run(llvm::Function &func,
                                       llvm::FunctionAnalysisManager &manager) {
  auto &bracketsMultiplications = manager.getResult<BracketsMulAnalysis>(func);
  bool modified = run(bracketsMultiplications, func);
  return modified ? llvm::PreservedAnalyses::none()
                  : llvm::PreservedAnalyses::all();
}

bool custom_opts::BracketsMulTransform::run(
    const custom_opts::BracketsMultiplications &bracketsMultiplications,
    llvm::Function &func) {
  bool modified{false};
  // Functions marked explicitly 'optnone' should be ignored since we shouldn't
  // be changing anything in them anyway.
  if (bracketsMultiplications.function()->hasFnAttribute(
          llvm::Attribute::OptimizeNone)) {
    return modified;
  }

  for (llvm::BinaryOperator *binOp :
       bracketsMultiplications.multiplications()) {
    if (custom_opts::ConvertBracketsMul(binOp, func)) {
      modified = true;
    }
  }

  return modified;
}
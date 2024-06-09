#include "llvm/Transforms/CUSTOM_OPTS/OneIsZeroTransform.h"

#include <cassert>

#include "llvm/CUSTOM_OPTS/OneIsZero.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/InitializePasses.h"
#include "llvm/Pass.h"

llvm::PreservedAnalyses
custom_opts::OneIsZeroTransform::run(llvm::Function &func,
                                     llvm::FunctionAnalysisManager &manager) {
  auto &predicates = manager.getResult<OneIsZeroAnalysis>(func);
  bool modified = run(predicates, func);
  return modified ? llvm::PreservedAnalyses::none()
                  : llvm::PreservedAnalyses::all();
}

bool custom_opts::OneIsZeroTransform::run(
    const custom_opts::OneIsZeroPredicates &predicates, llvm::Function &func) {
  bool modified{false};
  // Functions marked explicitly 'optnone' should be ignored since we shouldn't
  // be changing anything in them anyway.
  if (predicates.function()->hasFnAttribute(llvm::Attribute::OptimizeNone)) {
    return modified;
  }

  for (llvm::BinaryOperator *binOp : predicates.predicates()) {
    if (custom_opts::ConvertOneIsZeroPredicate(binOp, func)) {
      modified = true;
    }
  }

  return modified;
}
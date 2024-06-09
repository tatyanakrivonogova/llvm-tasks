#include "llvm/Analysis/CUSTOM_OPTS/OneIsZeroAnalysis.h"

#include <cassert>
#include <stdio.h>
#include <utility>

#include "llvm/Analysis/Passes.h"
#include "llvm/CUSTOM_OPTS/OneIsZero.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/ModuleSlotTracker.h"
#include "llvm/InitializePasses.h"
#include "llvm/PassRegistry.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

custom_opts::OneIsZeroPredicates::OneIsZeroPredicates(
    Function &func, std::vector<BinaryOperator *> &&predicates)
    : function_(&func), predicates_(std::move(predicates)) {}

Function *custom_opts::OneIsZeroPredicates::function() const {
  return function_;
}

const std::vector<BinaryOperator *> &
custom_opts::OneIsZeroPredicates::predicates() const {
  return predicates_;
}

custom_opts::OneIsZeroAnalysis::Result
custom_opts::OneIsZeroAnalysis::run(Function &func,
                                    FunctionAnalysisManager &manager) {
  std::vector<BinaryOperator *> predicates =
      custom_opts::FindOneIsZeroPredicates(func);
  OneIsZeroPredicates result{func, std::move(predicates)};
  return result;
}

AnalysisKey custom_opts::OneIsZeroAnalysis::Key{};

custom_opts::OneIsZeroAnalysisPrinter::OneIsZeroAnalysisPrinter(raw_ostream &os)
    : os_(os) {}

PreservedAnalyses
custom_opts::OneIsZeroAnalysisPrinter::run(Function &func,
                                           FunctionAnalysisManager &manager) {
  auto &predicates = manager.getResult<OneIsZeroAnalysis>(func);
  predicates.Print(os_);
  return PreservedAnalyses::all();
}

void custom_opts::OneIsZeroPredicates::Print(raw_ostream &os) const {
  if (!predicates_.empty()) {
    ModuleSlotTracker slotTracker{function_->getParent()};
    os << "Brackets multiplications in \"" << function_->getName() << "\":\n";
    for (BinaryOperator *binOp : predicates_) {
      binOp->print(os, slotTracker);
      os << '\n';
    }
  }
}
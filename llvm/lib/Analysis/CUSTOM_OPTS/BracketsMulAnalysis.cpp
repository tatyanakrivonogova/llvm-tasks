#include "llvm/Analysis/CUSTOM_OPTS/BracketsMulAnalysis.h"

#include <cassert>
#include <stdio.h>
#include <utility>

#include "llvm/Analysis/Passes.h"
#include "llvm/CUSTOM_OPTS/BracketsMul.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/ModuleSlotTracker.h"
#include "llvm/InitializePasses.h"
#include "llvm/PassRegistry.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

custom_opts::BracketsMultiplications::BracketsMultiplications(
    Function &func, std::vector<BinaryOperator *> &&bracketsMuls)
    : function_(&func), multiplications_(std::move(bracketsMuls)) {}

Function *custom_opts::BracketsMultiplications::function() const {
  return function_;
}

const std::vector<BinaryOperator *> &
custom_opts::BracketsMultiplications::multiplications() const {
  return multiplications_;
}

custom_opts::BracketsMulAnalysis::Result
custom_opts::BracketsMulAnalysis::run(Function &func,
                                      FunctionAnalysisManager &manager) {
  std::vector<BinaryOperator *> multiplications =
      custom_opts::FindBracketsMul(func);
  BracketsMultiplications result{func, std::move(multiplications)};
  return result;
}

AnalysisKey custom_opts::BracketsMulAnalysis::Key{};

custom_opts::BracketsMulAnalysisPrinter::BracketsMulAnalysisPrinter(
    raw_ostream &os)
    : os_(os) {}

PreservedAnalyses
custom_opts::BracketsMulAnalysisPrinter::run(Function &func,
                                             FunctionAnalysisManager &manager) {
  auto &bracketsMuls = manager.getResult<BracketsMulAnalysis>(func);
  bracketsMuls.Print(os_);
  return PreservedAnalyses::all();
}

void custom_opts::BracketsMultiplications::Print(raw_ostream &os) const {
  if (!multiplications_.empty()) {
    ModuleSlotTracker slotTracker{function_->getParent()};
    os << "Brackets multiplications in \"" << function_->getName() << "\":\n";
    for (BinaryOperator *binOp : multiplications_) {
      binOp->print(os, slotTracker);
      os << '\n';
    }
  }
}
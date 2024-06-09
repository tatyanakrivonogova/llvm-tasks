#include "llvm/Analysis/CUSTOM_OPTS/TripleBracketsMulAnalysis.h"

#include <cassert>
#include <stdio.h>
#include <utility>

#include "llvm/Analysis/Passes.h"
#include "llvm/CUSTOM_OPTS/TripleBracketsMul.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/ModuleSlotTracker.h"
#include "llvm/InitializePasses.h"
#include "llvm/PassRegistry.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

custom_opts::TripleBracketsMultiplications::TripleBracketsMultiplications(
    Function &func, std::vector<custom_opts::FoundInstructionAndVariables *>
                        &&tripleBracketsMuls)
    : function_(&func), multiplications_(std::move(tripleBracketsMuls)) {}

Function *custom_opts::TripleBracketsMultiplications::function() const {
  return function_;
}

const std::vector<custom_opts::FoundInstructionAndVariables *> &
custom_opts::TripleBracketsMultiplications::multiplications() const {
  return multiplications_;
}

custom_opts::TripleBracketsMulAnalysis::Result
custom_opts::TripleBracketsMulAnalysis::run(Function &func,
                                            FunctionAnalysisManager &manager) {
  std::vector<custom_opts::FoundInstructionAndVariables *> multiplications =
      custom_opts::FindTripleBracketsMul(func, manager);

  TripleBracketsMultiplications result{func, std::move(multiplications)};
  return result;
}

AnalysisKey custom_opts::TripleBracketsMulAnalysis::Key{};

custom_opts::TripleBracketsMulAnalysisPrinter::TripleBracketsMulAnalysisPrinter(
    raw_ostream &os)
    : os_(os) {}

PreservedAnalyses custom_opts::TripleBracketsMulAnalysisPrinter::run(
    Function &func, FunctionAnalysisManager &manager) {
  auto &tripleBracketsMuls = manager.getResult<TripleBracketsMulAnalysis>(func);
  tripleBracketsMuls.Print(os_);
  return PreservedAnalyses::all();
}

void custom_opts::TripleBracketsMultiplications::Print(raw_ostream &os) const {
  if (!multiplications_.empty()) {
    ModuleSlotTracker slotTracker{function_->getParent()};
    os << "Triple brackets multiplications in \"" << function_->getName()
       << "\":\n";
    for (custom_opts::FoundInstructionAndVariables *foundElement :
         multiplications_) {
      foundElement->binOp->print(os, slotTracker);
      os << '\n';
    }
  }
}
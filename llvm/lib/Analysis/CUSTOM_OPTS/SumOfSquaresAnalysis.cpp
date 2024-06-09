#include "llvm/Analysis/CUSTOM_OPTS/SumOfSquaresAnalysis.h"

#include <cassert>
#include <iostream>
#include <stdio.h>
#include <utility>
#include <vector>

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/ModuleSlotTracker.h"
#include "llvm/InitializePasses.h"
#include "llvm/PassRegistry.h"
#include "llvm/Support/raw_ostream.h"

custom_opts::TargetLoops::TargetLoops(llvm::Function &func,
                                      std::vector<llvm::Loop *> &&targerLoops)
    : function_(&func), targetLoops_(std::move(targerLoops)) {}

llvm::Function *custom_opts::TargetLoops::function() const { return function_; }

const std::vector<llvm::Loop *> &custom_opts::TargetLoops::targetLoops() const {
  return targetLoops_;
}

void custom_opts::TargetLoops::Print(llvm::raw_ostream &os) const {
  if (!targetLoops_.empty()) {
    // Using a ModuleSlotTracker for printing makes it so full function
    // analysis for slot numbering only occurs once instead of every time an
    // instruction is printed.
    llvm::ModuleSlotTracker slotTracker{function_->getParent()};
    os << "Target loops in \"" << function_->getName() << "\":\n";
    for (llvm::Loop *binOp : targetLoops_) {
      // binOp->print(os, slotTracker);
      binOp->print(os, false, true);
      os << '\n';
    }
  }
}

custom_opts::SumOfSquaresAnalysis::Result
custom_opts::SumOfSquaresAnalysis::run(llvm::Function &func,
                                       llvm::FunctionAnalysisManager &manager) {
  std::vector<llvm::Loop *> targetLoops;

  llvm::ScalarEvolution &SE =
      manager.getResult<llvm::ScalarEvolutionAnalysis>(func);
  printf("SE\n");
  llvm::LoopInfo &LI = manager.getResult<llvm::LoopAnalysis>(func);
  printf("LI\n");

  // for (llvm::Loop *L : LI) {
  //   // L->print(errs());
  //   targetLoops.push_back(L);
  // }
  // SE = &getAnalysis<ScalarEvolution>();
  // LI = &getAnalysis<LoopInfoWrapperPass>().getLoopInfo();

  // for (auto &L : *LI) {
  //     if (SE->hasLoopInvariantBackedgeTakenCount(&L)) {
  //         errs() << "Found a loop with constant trip count:\n";
  //         L->dump();
  //     }
  // }

  TargetLoops result{func, std::move(targetLoops)};
  printf("result\n");
  return result;
}

llvm::AnalysisKey custom_opts::SumOfSquaresAnalysis::Key{};

custom_opts::SumOfSquaresAnalysisPrinter::SumOfSquaresAnalysisPrinter(
    llvm::raw_ostream &os)
    : os_(os) {}

llvm::PreservedAnalyses custom_opts::SumOfSquaresAnalysisPrinter::run(
    llvm::Function &func, llvm::FunctionAnalysisManager &manager) {
  auto &targetLoops = manager.getResult<SumOfSquaresAnalysis>(func);
  targetLoops.Print(os_);
  return llvm::PreservedAnalyses::all();
}
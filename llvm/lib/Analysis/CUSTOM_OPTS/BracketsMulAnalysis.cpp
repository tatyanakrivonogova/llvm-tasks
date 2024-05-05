#include "llvm/Analysis/CUSTOM_OPTS/BracketsMulAnalysis.h"

#include <cassert>
#include <utility>
#include <stdio.h>

#include "llvm/Analysis/Passes.h"
#include "llvm/InitializePasses.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/ModuleSlotTracker.h"
#include "llvm/CUSTOM_OPTS/BracketsMul.h"
#include "llvm/PassRegistry.h"
#include "llvm/Support/raw_ostream.h"

namespace custom_opts
{

static constexpr char PassName[] = "custom-opts-brackets-mul-analysis";
static constexpr char PassDescription[] =
  "Find brackets multiplication";

} // namespace custom_opts

#define DEBUG_TYPE ::custom_opts::PassName

custom_opts::BracketsMultiplications::BracketsMultiplications(llvm::Function& func,
  std::vector<llvm::BinaryOperator*>&& bracketsMuls)
  : function_(&func),
  multiplications_(std::move(bracketsMuls))
{
}

llvm::Function* custom_opts::BracketsMultiplications::function() const
{
  return function_;
}

const std::vector<llvm::BinaryOperator*>& custom_opts::BracketsMultiplications::multiplications() const
{
  return multiplications_;
}

void custom_opts::BracketsMultiplications::Print(llvm::raw_ostream& os) const
{
  if (!multiplications_.empty())
  {
    // Using a ModuleSlotTracker for printing makes it so full function
    // analysis for slot numbering only occurs once instead of every time an
    // instruction is printed.
    llvm::ModuleSlotTracker slotTracker{function_->getParent()};
    os << "Brackets multiplications in \"" << function_->getName()
      << "\":\n";
    // printf("Brackets multiplications in %s\":\n", function_->getName());
    for (llvm::BinaryOperator* binOp : multiplications_)
    {
      binOp->print(os, slotTracker);
      os << '\n';
    }
  }
}

custom_opts::BracketsMulAnalysis::Result custom_opts::BracketsMulAnalysis::run(
  llvm::Function& func, llvm::FunctionAnalysisManager& manager)
{
  return run(func);
}

custom_opts::BracketsMulAnalysis::Result custom_opts::BracketsMulAnalysis::run(
  llvm::Function& func)
{
  std::vector<llvm::BinaryOperator*> multiplications = custom_opts::FindBracketsMul(func);
  BracketsMultiplications result{func, std::move(multiplications)};
  return result;
}

llvm::AnalysisKey custom_opts::BracketsMulAnalysis::Key{};

custom_opts::BracketsMulAnalysisPrinter::BracketsMulAnalysisPrinter(
  llvm::raw_ostream& os)
  : os_(os)
{
}

llvm::PreservedAnalyses custom_opts::BracketsMulAnalysisPrinter::run(
  llvm::Function& func, llvm::FunctionAnalysisManager& manager)
{
  auto& bracketsMuls = manager.getResult<BracketsMulAnalysis>(func);
  bracketsMuls.Print(os_);
  return llvm::PreservedAnalyses::all();
}
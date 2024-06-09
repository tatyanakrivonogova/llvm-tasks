#include "llvm/Transforms/CUSTOM_OPTS/TripleBracketsMulTransform.h"

#include <cassert>

#include "llvm/CUSTOM_OPTS/TripleBracketsMul.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/InitializePasses.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace custom_opts {

static constexpr char PassName[] = "custom-opts-triple-brackets-mul-transform";
static constexpr char PassDescription[] =
    "Collapses triple brackets multiplications";

} // namespace custom_opts

PreservedAnalyses
custom_opts::TripleBracketsMulTransform::run(Function &func,
                                             FunctionAnalysisManager &manager) {
  auto &tripleBracketsMultiplications =
      manager.getResult<TripleBracketsMulAnalysis>(func);
  bool modified = run(tripleBracketsMultiplications, func);
  return modified ? PreservedAnalyses::none() : PreservedAnalyses::all();
}

bool custom_opts::TripleBracketsMulTransform::run(
    const custom_opts::TripleBracketsMultiplications
        &tripleBracketsMultiplications,
    Function &func) {
  bool modified{false};
  func.print(errs());
  // Functions marked explicitly 'optnone' should be ignored since we shouldn't
  // be changing anything in them anyway.
  if (tripleBracketsMultiplications.function()->hasFnAttribute(
          Attribute::OptimizeNone)) {
    return modified;
  }

  for (custom_opts::FoundInstructionAndVariables *foundElement :
       tripleBracketsMultiplications.multiplications()) {
    if (custom_opts::ConvertTripleBracketsMul(foundElement, func)) {
      modified = true;
    }
  }

  return modified;
}
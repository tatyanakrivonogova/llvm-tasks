#if !defined(CUSTOM_OPTS_TRANSFORM_BRACKETSMULTRANSFORM_H_)
#define CUSTOM_OPTS_TRANSFORM_BRACKETSMULTRANSFORM_H_

#include "llvm/Analysis/CUSTOM_OPTS/BracketsMulAnalysis.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

namespace llvm {

class Function;

} // namespace llvm

namespace custom_opts {

struct BracketsMulTransform : llvm::PassInfoMixin<BracketsMulTransform> {
  // static char ID;
  llvm::PreservedAnalyses run(llvm::Function &func,
                              llvm::FunctionAnalysisManager &manager);
  bool run(const custom_opts::BracketsMultiplications &bracketsMultiplications,
           llvm::Function &func);
};

} // namespace custom_opts

#endif // !CUSTOM_OPTS_TRANSFORM_BRACKETSMULTRANSFORM_H_
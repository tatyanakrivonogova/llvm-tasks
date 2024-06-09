#if !defined(CUSTOM_OPTS_TRANSFORM_TRIPLEBRACKETSMULTRANSFORM_H_)
#define CUSTOM_OPTS_TRANSFORM_TRIPLEBRACKETSMULTRANSFORM_H_

#include "llvm/Analysis/CUSTOM_OPTS/TripleBracketsMulAnalysis.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

namespace llvm {

class Function;

} // namespace llvm

namespace custom_opts {

struct TripleBracketsMulTransform
    : llvm::PassInfoMixin<TripleBracketsMulTransform> {
  llvm::PreservedAnalyses run(llvm::Function &func,
                              llvm::FunctionAnalysisManager &manager);
  bool run(const custom_opts::TripleBracketsMultiplications
               &tripleBracketsMultiplications,
           llvm::Function &func);
};

} // namespace custom_opts

#endif // !CUSTOM_OPTS_TRANSFORM_TRIPLEBRACKETSMULTRANSFORM_H_
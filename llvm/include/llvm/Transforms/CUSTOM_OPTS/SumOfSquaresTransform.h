#if !defined(CUSTOM_OPTS_TRANSFORM_SUMOFSQUARESTRANSFORM_H_)
#define CUSTOM_OPTS_TRANSFORM_SUMOFSQUARESTRANSFORM_H_

#include "llvm/Analysis/CUSTOM_OPTS/SumOfSquaresAnalysis.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

namespace llvm {

class Function;

} // namespace llvm

namespace custom_opts {

struct SumOfSquaresTransform : llvm::PassInfoMixin<SumOfSquaresTransform> {
  llvm::PreservedAnalyses run(llvm::Function &func,
                              llvm::FunctionAnalysisManager &manager);
  bool run(const custom_opts::TargetLoops &targetLoops, llvm::Function &func);
};

} // namespace custom_opts

#endif // !CUSTOM_OPTS_TRANSFORM_SUMOFSQUARESTRANSFORM_H_
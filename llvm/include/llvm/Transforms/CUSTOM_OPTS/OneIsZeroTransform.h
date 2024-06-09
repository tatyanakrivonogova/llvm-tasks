#if !defined(CUSTOM_OPTS_TRANSFORM_ONEISZEROTRANSFORM_H_)
#define CUSTOM_OPTS_TRANSFORM_ONEISZEROTRANSFORM_H_

#include "llvm/Analysis/CUSTOM_OPTS/OneIsZeroAnalysis.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

namespace llvm {

class Function;

} // namespace llvm

namespace custom_opts {

struct OneIsZeroTransform : llvm::PassInfoMixin<OneIsZeroTransform> {
  // static char ID;
  llvm::PreservedAnalyses run(llvm::Function &func,
                              llvm::FunctionAnalysisManager &manager);
  bool run(const custom_opts::OneIsZeroPredicates &predicates,
           llvm::Function &func);
};

} // namespace custom_opts

#endif // !CUSTOM_OPTS_TRANSFORM_ONEISZEROTRANSFORM_H_
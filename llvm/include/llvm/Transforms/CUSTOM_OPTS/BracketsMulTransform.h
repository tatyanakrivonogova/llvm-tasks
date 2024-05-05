#if !defined(CUSTOM_OPTS_TRANSFORM_BRACKETSMULTRANSFORM_H_)
#define CUSTOM_OPTS_TRANSFORM_BRACKETSMULTRANSFORM_H_

#include "llvm/Analysis/CUSTOM_OPTS/BracketsMulAnalysis.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
// #include "llvm/IR/IRBuilder.h"
// #include "llvm/Analysis/TargetFolder.h"

namespace llvm
{

class Function;

} // namespace llvm

namespace custom_opts
{

struct BracketsMulTransform : llvm::PassInfoMixin<BracketsMulTransform>
{
  llvm::PreservedAnalyses run(llvm::Function& func,
    llvm::FunctionAnalysisManager& manager);
  bool run(const custom_opts::BracketsMultiplications& floatComparisons, llvm::Function& func);
};

} // namespace custom_opts

// struct BracketsMulTransformWrapper : llvm::FunctionPass
// {
//   static char ID;
//   BracketsMulTransformWrapper();

//   bool runOnFunction(llvm::Function& func) override;
//   void getAnalysisUsage(llvm::AnalysisUsage& au) const override;
// };


#endif // !CUSTOM_OPTS_TRANSFORM_BRACKETSMULTRANSFORM_H_
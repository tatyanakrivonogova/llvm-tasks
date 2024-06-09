#if !defined(CUSTOM_OPTS_ANALYSIS_SUMOFSQUARESANALYSIS_H_)
#define CUSTOM_OPTS_ANALYSIS_SUMOFSQUARESANALYSIS_H_

#include <optional>
#include <vector>

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

namespace llvm {

class Loop;
class Function;
class ScalarEvolution;
class SCEV;
class raw_ostream;

} // namespace llvm

namespace custom_opts {

class TargetLoops {
  llvm::Function *function_{nullptr};
  std::vector<llvm::Loop *> targetLoops_{};

public:
  TargetLoops(llvm::Function &func, std::vector<llvm::Loop *> &&targetLoops_);

  llvm::Function *function() const;
  const std::vector<llvm::Loop *> &targetLoops() const;
  void Print(llvm::raw_ostream &os) const;
};

struct SumOfSquaresAnalysis : llvm::AnalysisInfoMixin<SumOfSquaresAnalysis> {
  using Result = TargetLoops;
  Result run(llvm::Function &func, llvm::FunctionAnalysisManager &manager);
  // Result run(llvm::Function& func);
  // bool isTargetLoop(llvm::Loop *L, llvm::ScalarEvolution &SE);

private:
  friend struct llvm::AnalysisInfoMixin<SumOfSquaresAnalysis>;
  static llvm::AnalysisKey Key;
};

class SumOfSquaresAnalysisPrinter
    : public llvm::PassInfoMixin<SumOfSquaresAnalysisPrinter> {
  llvm::raw_ostream &os_;

public:
  explicit SumOfSquaresAnalysisPrinter(llvm::raw_ostream &os);
  llvm::PreservedAnalyses run(llvm::Function &func,
                              llvm::FunctionAnalysisManager &manager);
};

} // namespace custom_opts

#endif // !CUSTOM_OPTS_ANALYSIS_SUMOFSQUARESANALYSIS_H_
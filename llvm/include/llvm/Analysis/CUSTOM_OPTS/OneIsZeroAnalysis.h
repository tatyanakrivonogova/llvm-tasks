#if !defined(CUSTOM_OPTS_ANALYSIS_ONEISZEROANALYSIS_H_)
#define CUSTOM_OPTS_ANALYSIS_ONEISZEROANALYSIS_H_

#include <optional>
#include <vector>

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

namespace llvm {

class BinaryOperator;
class Function;
class raw_ostream;

} // namespace llvm

namespace custom_opts {

class OneIsZeroPredicates {
  llvm::Function *function_{nullptr};
  std::vector<llvm::BinaryOperator *> predicates_{};

public:
  OneIsZeroPredicates(llvm::Function &func,
                      std::vector<llvm::BinaryOperator *> &&predicates);

  llvm::Function *function() const;
  const std::vector<llvm::BinaryOperator *> &predicates() const;
  void Print(llvm::raw_ostream &os) const;
};

struct OneIsZeroAnalysis : llvm::AnalysisInfoMixin<OneIsZeroAnalysis> {
  using Result = OneIsZeroPredicates;
  Result run(llvm::Function &func, llvm::FunctionAnalysisManager &manager);
  Result run(llvm::Function &func);

private:
  friend struct llvm::AnalysisInfoMixin<OneIsZeroAnalysis>;
  static llvm::AnalysisKey Key;
};

class OneIsZeroAnalysisPrinter
    : public llvm::PassInfoMixin<OneIsZeroAnalysisPrinter> {
  llvm::raw_ostream &os_;

public:
  explicit OneIsZeroAnalysisPrinter(llvm::raw_ostream &os);
  llvm::PreservedAnalyses run(llvm::Function &func,
                              llvm::FunctionAnalysisManager &manager);
};

} // namespace custom_opts

#endif // !CUSTOM_OPTS_ANALYSIS_ONEISZEROANALYSIS_H_
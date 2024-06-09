#if !defined(CUSTOM_OPTS_ANALYSIS_TRIPLEBRACKETSMULANALYSIS_H_)
#define CUSTOM_OPTS_ANALYSIS_TRIPLEBRACKETSMULANALYSIS_H_

#include <optional>
#include <vector>

#include "llvm/CUSTOM_OPTS/TripleBracketsMul.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

namespace llvm {

class BinaryOperator;
class Function;
class ScalarEvolution;
class SCEV;
class Value;
class raw_ostream;

} // namespace llvm

namespace custom_opts {

class TripleBracketsMultiplications {
  llvm::Function *function_{nullptr};
  std::vector<custom_opts::FoundInstructionAndVariables *> multiplications_{};

public:
  TripleBracketsMultiplications(
      llvm::Function &func,
      std::vector<custom_opts::FoundInstructionAndVariables *>
          &&tripleBracketsMuls);

  llvm::Function *function() const;
  const std::vector<custom_opts::FoundInstructionAndVariables *> &
  multiplications() const;
  void Print(llvm::raw_ostream &os) const;
};

struct TripleBracketsMulAnalysis
    : llvm::AnalysisInfoMixin<TripleBracketsMulAnalysis> {
  using Result = TripleBracketsMultiplications;
  Result run(llvm::Function &func, llvm::FunctionAnalysisManager &manager);
  // Result run(llvm::Function& func);

private:
  friend struct llvm::AnalysisInfoMixin<TripleBracketsMulAnalysis>;
  static llvm::AnalysisKey Key;
};

class TripleBracketsMulAnalysisPrinter
    : public llvm::PassInfoMixin<TripleBracketsMulAnalysisPrinter> {
  llvm::raw_ostream &os_;

public:
  explicit TripleBracketsMulAnalysisPrinter(llvm::raw_ostream &os);
  llvm::PreservedAnalyses run(llvm::Function &func,
                              llvm::FunctionAnalysisManager &manager);
};

} // namespace custom_opts

#endif // !CUSTOM_OPTS_ANALYSIS_TRIPLEBRACKETSMULANALYSIS_H_
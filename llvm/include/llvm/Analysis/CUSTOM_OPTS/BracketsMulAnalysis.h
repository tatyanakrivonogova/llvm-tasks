#if !defined(CUSTOM_OPTS_ANALYSIS_BRACKETSMULANALYSIS_H_)
#define CUSTOM_OPTS_ANALYSIS_BRACKETSMULANALYSIS_H_

#include <optional>
#include <vector>

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

namespace llvm
{

class BinaryOperator;
class Function;
class raw_ostream;

} // namespace llvm

namespace custom_opts
{

class BracketsMultiplications
{
  llvm::Function* function_{nullptr};
  std::vector<llvm::BinaryOperator*> multiplications_{};

public:
  BracketsMultiplications(llvm::Function& func,
    std::vector<llvm::BinaryOperator*>&& brackeatsMuls);

  llvm::Function* function() const;
  const std::vector<llvm::BinaryOperator*>& multiplications() const;
  void Print(llvm::raw_ostream& os) const;
};

struct BracketsMulAnalysis : llvm::AnalysisInfoMixin<BracketsMulAnalysis>
{
  using Result = BracketsMultiplications;
  Result run(llvm::Function& func, llvm::FunctionAnalysisManager& manager);
  Result run(llvm::Function& func);

private:
  friend struct llvm::AnalysisInfoMixin<BracketsMulAnalysis>;
  static llvm::AnalysisKey Key;
};

class BracketsMulAnalysisPrinter
  : public llvm::PassInfoMixin<BracketsMulAnalysisPrinter>
{
  llvm::raw_ostream& os_;

public:
  explicit BracketsMulAnalysisPrinter(llvm::raw_ostream& os);
  llvm::PreservedAnalyses run(llvm::Function& func,
    llvm::FunctionAnalysisManager& manager);
};

} // namespace custom_opts


#endif // !CUSTOM_OPTS_ANALYSIS_BRACKETSMULANALYSIS_H_
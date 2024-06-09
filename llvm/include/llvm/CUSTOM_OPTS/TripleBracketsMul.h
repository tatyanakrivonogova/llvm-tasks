#if !defined(CUSTOM_OPTS_TRIPLEBRACKETSMUL_H_)
#define CUSTOM_OPTS_TRIPLEBRACKETSMUL_H_

#include "llvm/Analysis/TargetFolder.h"
#include "llvm/IR/PassManager.h"
#include <vector>

// forward declarations
namespace llvm {
class Value;
class Function;
class BinaryOperator;
} // namespace llvm

namespace custom_opts {
struct FoundInstructionAndVariables {
  llvm::BinaryOperator *binOp;
  llvm::Value *var1;
  llvm::Value *var2;
  llvm::Value *var3;
};

std::vector<FoundInstructionAndVariables *>
FindTripleBracketsMul(llvm::Function &func,
                      llvm::FunctionAnalysisManager &manager);
llvm::Value *ConvertTripleBracketsMul(FoundInstructionAndVariables *foundInst,
                                      llvm::Function &func);

} // namespace custom_opts

#endif // !CUSTOM_OPTS_TRIPLEBRACKETSMUL_H_
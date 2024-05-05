#if !defined(CUSTOM_OPTS_BRACKETSMUL_H_)
#define CUSTOM_OPTS_BRACKETSMUL_H_

#include <vector>
#include "llvm/Analysis/TargetFolder.h"

// forward declarations
namespace llvm
{
class Value;
class Function;
class BinaryOperator;
} // namespace llvm

namespace custom_opts
{
std::vector<llvm::BinaryOperator*> FindBracketsMul(llvm::Function& func);
llvm::Value* ConvertBracketsMul(llvm::BinaryOperator* binOp, llvm::Function& func);

} // namespace custom_opts


#endif // !CUSTOM_OPTS_BRACKETSMUL_H_
#if !defined(CUSTOM_OPTS_ONEISZERO_H_)
#define CUSTOM_OPTS_ONEISZERO_H_

#include "llvm/Analysis/TargetFolder.h"
#include <vector>

// forward declarations
namespace llvm {
class Value;
class Function;
class BinaryOperator;
} // namespace llvm

namespace custom_opts {
std::vector<llvm::BinaryOperator *>
FindOneIsZeroPredicates(llvm::Function &func);
llvm::Value *ConvertOneIsZeroPredicate(llvm::BinaryOperator *binOp,
                                       llvm::Function &func);

} // namespace custom_opts

#endif // !CUSTOM_OPTS_ONEISZERO_H_
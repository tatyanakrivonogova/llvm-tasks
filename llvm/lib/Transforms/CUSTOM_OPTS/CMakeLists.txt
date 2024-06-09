add_llvm_component_library(CUSTOM_OPTS_Transform
  BracketsMulTransform.cpp
  TripleBracketsMulTransform.cpp
  SumOfSquaresTransform.cpp
  OneIsZeroTransform.cpp
  
  ADDITIONAL_HEADER_DIRS
  ${LLVM_MAIN_INCLUDE_DIR}/llvm/Transforms
  ${LLVM_MAIN_INCLUDE_DIR}/llvm/Transforms/CUSTOM_OPTS
  
  LINK_LIBS
    CUSTOM_OPTS_Analysis
    
  DEPENDS
    intrinsics_gen
  )
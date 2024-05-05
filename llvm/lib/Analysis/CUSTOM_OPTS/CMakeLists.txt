add_llvm_component_library(CUSTOM_OPTS_Analysis
  BracketsMulAnalysis.cpp
  
  ADDITIONAL_HEADER_DIRS
    ${LLVM_MAIN_INCLUDE_DIR}/llvm/CUSTOM_OPTS
    ${LLVM_MAIN_INCLUDE_DIR}/llvm/Analysis
    ${LLVM_MAIN_INCLUDE_DIR}/llvm/Analysis/CUSTOM_OPTS
    
  LINK_LIBS
    CUSTOM_OPTS_BracketsMul
    
  DEPENDS
    intrinsics_gen
  )

set_target_properties(CUSTOM_OPTS_Analysis
  PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
  )
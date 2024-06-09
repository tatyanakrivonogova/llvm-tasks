add_llvm_component_library(CUSTOM_OPTS_TripleBracketsMul
  TripleBracketsMul.cpp
  
  ADDITIONAL_HEADER_DIRS
    ${LLVM_MAIN_INCLUDE_DIRS}/llvm/CUSTOM_OPTS
    
  DEPENDS
    intrinsics_gen
  )
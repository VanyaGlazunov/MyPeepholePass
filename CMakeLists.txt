cmake_minimum_required(VERSION 3.13.4) 
project(MyPeepholePass)

find_package(LLVM REQUIRED CONFIG)

include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})
include_directories(src)

add_definitions(${LLVM_DEFINITIONS})

set(CMAKE_CXX_STANDARD ${LLVM_CXX_STD}) 
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(MyPeepholePass MODULE src/my_pass.cpp)

if(UNIX AND NOT APPLE)
  set_target_properties(MyPeepholePass PROPERTIES LINK_FLAGS "-Wl,--exclude-libs,ALL")
endif()

target_link_libraries(MyPeepholePass PRIVATE
    LLVMSupport         
    LLVMCore            
    LLVMIRReader        
    LLVMPasses          
    LLVMipo             
    LLVMAnalysis        
    LLVMTransformUtils  
)


message(STATUS "LLVM_DIR: ${LLVM_DIR}")
message(STATUS "LLVM_INCLUDE_DIRS: ${LLVM_INCLUDE_DIRS}")
message(STATUS "LLVM_LIBRARY_DIRS: ${LLVM_LIBRARY_DIRS}")
message(STATUS "LLVM_TOOLS_BINARY_DIR (llvm-lit location hint): ${LLVM_TOOLS_BINARY_DIR}")
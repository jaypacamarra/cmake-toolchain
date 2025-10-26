set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR ARM)

set(TOOLCHAIN arm-none-eabi-)
if (CMAKE_HOST_SYSTEM_NAME STREQUAL "Linux")
        set(TOOLCHAIN_PREFIX "/opt/gcc-arm-none-eabi/bin")
    elseif(CMAKE_HOST_SYSTEM_NAME STREQUAL "Windows")
        set(TOOLCHAIN_PREFIX "C:/arm-toolchain/bin")
    else()
        set(TOOLCHAIN_PREFIX "/usr")
        message(STATUS "No TOOLCHAIN_PREFIX specified, using default: " ${TOOLCHAIN_PREFIX})
endif()

set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}/${TOOLCHAIN}gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN}g++)
set(CMAKE_ASM_COMPILER ${TOOLCHAIN}asm)
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)


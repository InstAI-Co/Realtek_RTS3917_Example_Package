# Realtek RTS3917 Cross-Compile Example Package
This is the example of cross-compiling C/C++ source code with Realtek RTS3917 toolchain in SDK v5.1.

Steps of cross-compilation:
1. Follow [the document](http://18.176.204.110/documents/6) to build and generate Linux Kernel firmware in Docker.
Linux firmware generation means all necessary tools for cross-compiling are ready.
1. Start Docker container and execute commands in it. Change directory to SDK output folder e.g. `/realhome/realtek_rts3917/rts39xx_sdk_v5.1/out/` in Document and clone example package.
    ```sh
    cd /realhome/realtek_rts3917/rts39xx_sdk_v5.1/out/
    git clone https://github.com/InstAI-Co/Realtek_RTS3917_Example_Package.git
    ```
1. Get into Example Package and build up the cross-compiling environment.
    ```sh
    cd Realtek_RTS3917_Example_Package
    . env.sh
    ```
1. Modify the source code `main.c`.
1. Make project for the first time to find and set the necessary toolchain.
    ```sh
    make
    ```
    The output would be like:
    ```console
    CMake Error at CMakeLists.txt:2 (project):
    The CMAKE_C_COMPILER:

        ../rts3917_base/host/bin/asdk-linux-gcc

    is not a full path and was not found in the PATH.

    Tell CMake where to find the compiler by setting either the environment
    variable "CC" or the CMake cache entry CMAKE_C_COMPILER to the full path to
    the compiler, or to the compiler name if it is in the PATH.


    CMake Error at CMakeLists.txt:2 (project):
    The CMAKE_CXX_COMPILER:

        ../rts3917_base/host/bin/asdk-linux-g++

    is not a full path and was not found in the PATH.

    Tell CMake where to find the compiler by setting either the environment
    variable "CXX" or the CMake cache entry CMAKE_CXX_COMPILER to the full path
    to the compiler, or to the compiler name if it is in the PATH.


    -- Configuring incomplete, errors occurred!
    Makefile:145: recipe for target 'cmake_check_build_system' failed
    make: *** [cmake_check_build_system] Error 1
    ```
1. Compile again to generate executable:
    ```sh
    make
    ```
    The output would be like:
    ```console
    -- The C compiler identification is GNU 10.3.1
    -- The CXX compiler identification is GNU 10.3.1
    -- Check for working C compiler: /realhome/realtek_rts3917/rts39xx_sdk_v5.1/out/rts3917_base/host/bin/asdk-linux-gcc
    -- Check for working C compiler: /realhome/realtek_rts3917/rts39xx_sdk_v5.1/out/rts3917_base/host/bin/asdk-linux-gcc -- works
    -- Detecting C compiler ABI info
    -- Detecting C compiler ABI info - done
    -- Detecting C compile features
    -- Detecting C compile features - done
    -- Check for working CXX compiler: /realhome/realtek_rts3917/rts39xx_sdk_v5.1/out/rts3917_base/host/bin/asdk-linux-g++
    -- Check for working CXX compiler: /realhome/realtek_rts3917/rts39xx_sdk_v5.1/out/rts3917_base/host/bin/asdk-linux-g++ -- works
    -- Detecting CXX compiler ABI info
    -- Detecting CXX compiler ABI info - done
    -- Detecting CXX compile features
    -- Detecting CXX compile features - done
    -- Configuring done
    -- Generating done
    -- Build files have been written to: /realhome/realtek_rts3917/rts39xx_sdk_v5.1/out/example
    ```
1. The cross-compiled program `example` can be transfered to RTS3917 board and be executed.
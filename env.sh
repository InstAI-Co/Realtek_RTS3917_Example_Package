#!/bin/bash
if [ -z `printenv CC` ] ||  [ -z `printenv CXX` ]; then
    export CC=../rts3917_base/host/bin/asdk-linux-gcc
    export CXX=../rts3917_base/host/bin/asdk-linux-g++

    # replace the hint words in CMakeSystem.cmake to absolute path
    path=`pwd`
    sed -i -e "s~==Current_Project_Dir==~$path~g" "CMakeFiles/3.16.9/CMakeSystem.cmake"
fi
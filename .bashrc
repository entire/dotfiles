# ros setup
export ROSCONSOLE_FORMAT='[${node}] [${severity}] [${time}]: ${message}'

# for gtest
CC=clang-7
CXX=clang++-7
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH=$HOME/.kerl:$PATH

#zephyr build vars
export ZEPHYR_TOOLCHAIN_VARIANT=zephyr
export ZEPHYR_SDK_INSTALL_DIR=~/zephyr-sdk-0.11.1

# alias for python3
alias python=python3



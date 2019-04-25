#!/bin/bash

# initial repo adding
sudo add-apt-repository main
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt update -y

sudo apt install -y \
    ack-grep \
    apt-transport-https \
    autoconf \
    automake \
    caffeine \
    cmake \
    curl \
    fping \
    htop \
    jq \
    libeigen3-dev \
    libmodbus-dev \
    libyaml-cpp-dev \
    ncdu \
    ntp \
    ntpdate \
    openjdk-8-jdk \
    pkg-config \
    python-click \
    python-configobj \
    python-coverage \
    python-future \
    python-logbook \
    python-pytest \
    python-pytest-cov \
    python-requests \
    python-scipy \
    python-setuptools \
    rsync \
    screen \
    tree \
    socat \
    vim 

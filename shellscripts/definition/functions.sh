#!/usr/bin/env bash

function install_apt() {
    arg=$1
    echo "Installing $arg"
    dpkg -l "$arg" > /dev/null 2>&1 && echo "  -> Already installed" && return 1 # package is already installed
    sudo apt-get install -y "$arg" > /dev/null 2>&1 || echo "  -> Not available in apt" && return 2 # package cannot be installed by apt
    return 0
}

#!/usr/bin/env bash

function install_apt() {
    arg=$1
    echo "Installing $arg"
    sudo apt-get install -y "$arg" > /dev/null
    return $?
}

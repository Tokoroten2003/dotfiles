#!/usr/bin/env bash

[[ $1 == "No-Install" ]] && exit 0

echo "Updating apt packages ..."
sudo apt-get update -yqq
echo " -> Done"
echo ""
echo "Upgrading apt packages ..."
sudo apt-get upgrade -yqq
echo " -> Done"
echo ""

if [[  -e $(which rustup) ]]; then
    echo "Updating rustup ..."
    rustup update
    echo " -> Done"
    echo ""
    echo "Updating cargo packages ..."
    cargo install-update --all -q
    echo " -> Done"
    echo ""
else
    echo "Rust is not installed"
    echo ""
fi

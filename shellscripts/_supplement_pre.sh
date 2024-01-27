#!/usr/bin/env bash

# add mise repository to apt
which mise > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    sudo install -dm 755 /etc/apt/keyrings
    wget -qO - https://mise.jdx.dev/gpg-key.pub | gpg --dearmor | sudo tee /etc/apt/keyrings/mise-archive-keyring.gpg 1> /dev/null
    echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.gpg arch=amd64] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list
    echo "Installing mise ..."
    sudo apt install -y mise > /dev/null 2>&1
    echo " -> Done"
    eval "$(mise activate)"
    mkdir -p $HOME/.config/mise
    ln -s $SRC_DIR/files/.config/mise/config.toml $HOME/.config/mise/config.toml
    echo "Installing runtimes by mise ..."
    mise install -yq
fi
# mise activate
if [[ $MODE = "Minimal" ]]; then
    touch "$HOME/.config/zsh/mise_activate.zsh"
    echo 'eval "$(mise activate)"' > "$HOME/.config/zsh/mise_activate.zsh"
fi

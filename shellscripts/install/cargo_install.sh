#!/usr/bin/env bash

# install rustup which includes cargo
# ref: https://www.rust-lang.org/ja/learn/get-started
if ! which mise > /dev/null && ! which rustup > /dev/null; then
    echo "==== Install rustup ===="
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    # file exists
    # shellcheck disable=SC1091
    . "$HOME/.cargo/env"
    echo "========================"
    echo ""
fi

# install packages by cargo
echo "==== cargo install ===="
echo "$CARGO_INSTALL_LIST" | while read -r pac; do
    install_cargo "$pac" || continue
done
echo "======================="
echo ""

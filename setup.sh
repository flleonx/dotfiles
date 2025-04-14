#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

ln -sf /dotfiles/nvim "$XDG_CONFIG_HOME"/nvim

ln -sf /dotfiles/.bashrc "$HOME"/.bashrc
ln -sf /dotfiles/.tmux.conf "$HOME"/.tmux.conf

locale-gen en_US.UTF-8

curl https://mise.run | sh
"$HOME"/.local/bin/mise use -g neovim starship go golangci-lint@v1.64.8 node ripgrep fzf zoxide lazygit jq

"$HOME"/.local/bin/mise exec go@latest -- go install github.com/go-delve/delve/cmd/dlv@latest
"$HOME"/.local/bin/mise exec nvim@latest -- nvim "+Lazy! install" +MasonToolsInstallSync +q!


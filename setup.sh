#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

ln -sf "$HOME"/dotfiles/nvim "$XDG_CONFIG_HOME"/nvim

ln -sf "$HOME"/dotfiles/.bashrc "$HOME"/.bashrc
ln -sf "$HOME"/.tmux.conf "$HOME"/.tmux.conf

locale-gen en_US.UTF-8

curl https://mise.run | sh
"$HOME"/.local/bin/mise use -g neovim starship go golangci-lint node ripgrep fzf zoxide lazygit jq
"$HOME"/.local/bin/mise exec go install github.com/go-delve/delve/cmd/dlv@latest

#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

ln -sf /dotfiles/nvim "$XDG_CONFIG_HOME"/nvim

ln -sf /dotfiles/.bashrc "$HOME"/.bashrc
ln -sf /dotfiles/.tmux.conf "$HOME"/.tmux.conf

locale-gen en_US.UTF-8

curl https://mise.run | sh
mise use -g neovim starship go golangci-lint node ripgrep fzf zoxide lazygit jq python gofumpt bat

go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/go-delve/delve/cmd/dlv@latest


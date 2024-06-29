eval "$(starship init zsh)"

alias tmux-v="tmux new -s void"
alias tmux-t="tmux new -s try"
alias td="cd ~/workspace && cd \$(find * -type d | fzf)"
alias tl="cd \$(find * -type d | fzf)"
alias gss="~/.local/scripts/worktree-generator"
alias tss="~/.local/scripts/tmux-sessionizer"
alias wss="~/.local/scripts/workspace-generator"
alias flushns="rm -rf ~/.local/share/nvim/harpoon.json && ~/.local/share/nvim/sessions"
alias gcl="golangci-lint run"
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

alias k="kubectl"
alias kp="KUBECONFIG=~/.kube/rasp-cluster kubectl"

eval "$(zoxide init zsh)"
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(fzf --zsh)"


eval "$(starship init bash)"

alias nc='nvim ~/.config/nvim/lua/user/'
alias fa='nvim ~/.config/fish/aliases.fish'


alias glp='git log --pretty=format:"%h - %an, %ar : %s" --graph'
# access
alias liveS='live-server --port=3000 --browser=brave'


# tmp
alias snipbox='cd ~/dev/backend/snippetbox/ & nvim cmd/web/main.go'

# exa (ls on steroids)
alias ls='exa -l'
# bat (cat on steroids)
alias cat='bat'
# ripgrep (grep on steroids)
alias grep='rg'


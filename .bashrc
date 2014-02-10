# Casey's bashrc

# Git Stuff

source ~/dotfiles/git-completion.bash   # git completion

# Natural fixes
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

# Aliases
alias ls="ls -l --color"        # Change list command

export PS1="\W (ಠ_ಠ)$ " # Terminal prompt

# Casey's bashrc

# Natural fixes
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

# Aliases
alias ls="ls -l --color"        # Change list command

export PS1="\W $ " # Terminal prompt

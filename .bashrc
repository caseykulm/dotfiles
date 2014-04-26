# Casey's bashrc

# Git Stuff

source ~/dotfiles/git-completion.bash   # git completion

# Natural fixes
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

# Aliases & Functions
alias ls="ls -l --color"        # Change list command
prettycurl(){ curl -s "$@" | python -m json.tool; }

export PS1="\W (ಠ_ಠ)$ " # Terminal prompt

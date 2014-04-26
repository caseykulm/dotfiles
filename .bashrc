# Casey's bashrc

# Natural fixes
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

# Aliases & Functions
alias ls="ls -l --color"        # Change list command
prettycurl(){ curl -s "$@" | python -m json.tool; }

export PS1="\W $ " # Terminal prompt

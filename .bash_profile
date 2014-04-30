# Casey's bashrc

# Git Stuff

source ~/dotfiles/git-completion.bash   # git completion

SSH_ENV=$HOME/.ssh/environment
   
# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}
   
if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# Natural fixes
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

# Aliases & Functions
alias ls="ls -l"        # Change list command
prettycurl(){ curl -s "$@" | python -m json.tool; }

export PS1="\W (ಠ_ಠ)$ " # Terminal prompt

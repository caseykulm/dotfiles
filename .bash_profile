source ~/dotfiles/git-completion.bash   # git completion
source ~/.git-prompt.sh
export PS1="\W λ\$(__git_ps1) "

# GIT

export GIT_PS1_SHOWDIRTYSTATE=1

SSH_ENV=$HOME/.ssh/environment
   
# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV}
    echo succeeded
    chmod 600 ${SSH_ENV}
    . ${SSH_ENV} > /dev/null
    /usr/bin/ssh-add
}
   
if [ -f "${SSH_ENV}" ]; then
     . ${SSH_ENV} > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# GIT ALIASES

git config --global alias.last 'log -1 HEAD'

# ALIASES & FUNCTIONS

alias ls="ls -lG"
prettycurl() { 
    curl -s "$@" | python -m json.tool
}
alias starwars="telnet towel.blinkenlights.nl"

# NATURAL FIXES

# change into a directory after creating it
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

alias ipplz="{ ifconfig en0 && ifconfig en1; } | grep \"inet \" | cut -d\  -f2"
alias ippubplz="curl ipinfo.io/ip"

# PATH

export ANDROID_HOME='/Library/programs/android-sdk'
export ANDROID_PLATFORM_TOOLS="${ANDROID_HOME}/platform-tools"
export ANDROID_TOOLS="${ANDROID_HOME}/tools"
export ANDROID_PATH=$ANDROID_HOME:$ANDROID_PLATFORM_TOOLS:$ANDROID_TOOLS
export GRADLE_HOME='/Users/chaoticuser/Programs/gradle-2.2.1/bin'
export PATH=$PATH:$GRADLE_HOME:$ANDROID_PATH

export JAVA6_HOME=$(/usr/libexec/java_home -v 1.6 -a x86_64)
export JAVA7_HOME=$(/usr/libexec/java_home -v 1.7 -a x86_64)
export JAVA8_HOME=$(/usr/libexec/java_home -v 1.8 -a x86_64)
export JAVA_HOME=$JAVA8_HOME


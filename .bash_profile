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
disneycurl() {
    prettycurl -H 'client:DMA' -H 'language:en' -H 'country:us' "$@"
}

# NATURAL FIXES

# change into a directory after creating it
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

alias ipplz="ifconfig en1 | grep \"inet \" | cut -d\  -f2"

# PATH

export ANDROID_HOME='/Library/programs/android-sdk'
export ANDROID_PLATFORM_TOOLS="${ANDROID_HOME}/platform-tools"
export ANDROID_TOOLS="${ANDROID_HOME}/tools"
export ANDROID_PATH=$ANDROID_HOME:$ANDROID_PLATFORM_TOOLS:$ANDROID_TOOLS
export GRADLE_HOME='/Users/chaoticuser/Programs/gradle-2.2.1/bin'
export PATH=$PATH:$GRADLE_HOME:$ANDROID_PATH

export JAVA_6='/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home'
export JAVA_7='/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home'
export JAVA_8='/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home'
export JAVA_HOME=$(/usr/libexec/java_home)


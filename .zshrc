# Path to your oh-my-zsh installation.
export ZSH=/Users/chaoticuser/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

ZSH_TMUX_AUTOSTART="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man colorize github jira brew osx zsh-syntax-highlighting tmux)

# User configuration

# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/chaoticuser/Programs/gradle-2.2.1/bin:/Library/programs/android-sdk:/Library/programs/android-sdk/platform-tools:/Library/programs/android-sdk/tools:/Users/chaoticuser/Programs/gradle-2.2.1/bin:/Library/programs/android-sdk:/Library/programs/android-sdk/platform-tools:/Library/programs/android-sdk/tools"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Ruby rvm setup
eval "$(rbenv init -)"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mobilesize="find . \( -name \*.apk -o -name \*.ipa \) -print0 | xargs -0 du | sort -nr | cut -f2- | xargs du -hs"
alias ipplz="{ ifconfig en0 && ifconfig en1; } | grep \"inet \" | cut -d\  -f2"
alias ippubplz="curl ipinfo.io/ip"
alias adbrestart="adb kill-server; adb start-server; adb devices"
alias starwars="telnet towel.blinkenlights.nl"
prettycurl() { 
    curl -s "$@" | python -m json.tool
}

export JAVA6_HOME=$(/usr/libexec/java_home -v 1.6 -a x86_64)
export JAVA7_HOME=$(/usr/libexec/java_home -v 1.7 -a x86_64)
export JAVA8_HOME=$(/usr/libexec/java_home -v 1.8 -a x86_64)
export JAVA_HOME=$JAVA7_HOME

export ANDROID_HOME='/Library/programs/android-sdk'
export ANDROID_PLATFORM_TOOLS="$ANDROID_HOME/platform-tools"
export GRADLE_HOME='/users/chaoticuser/programs/gradle-2.2.1/bin'
export PATH=$PATH:$ANDROID_HOME:$ANDROID_PLATFORM_TOOLS:$GRADLE_HOME



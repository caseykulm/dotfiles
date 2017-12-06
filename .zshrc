export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="miloshadzic"
ZSH_TMUX_AUTOSTART="true"
plugins=(git colored-man colorize github jira brew osx zsh-syntax-highlighting tmux)

source $ZSH/oh-my-zsh.sh
source "/Users/caseykulm/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# eval "$(rbenv init -)"

run_setup_scripts() {
  $SETUP_SCRIPT_PATH=$HOME/dotfiles/$1/
}

# OS Specific setup
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
  platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform='osx'
fi

# Source mac-setup scripts
# source $HOME/dotfiles/$SETUP_SCRIPT_PATH/hide_alive.sh

alias mobilesize="find . \( -name \*.apk -o -name \*.ipa \) -print0 | xargs -0 du | sort -nr | cut -f2- | xargs du -hs"
alias ipplz="{ ifconfig en0 && ifconfig en1; } | grep \"inet \" | cut -d\  -f2"
alias ippubplz="curl ipinfo.io/ip"
alias adbrestart="adb kill-server; adb start-server; adb devices"
alias starwars="telnet towel.blinkenlights.nl"
alias ducks='du -cks * | sort -rn | head'
prettycurl() {
    curl -s "$@" | python -m json.tool
}
chrome() {
  open -a "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" "$1"
}
bvsdk() {
  python $HOME/dotfiles/mac/latest_bvsdk.py
}

# export JAVA6_HOME=$(/usr/libexec/java_home -v 1.6 -a x86_64)
export JAVA7_HOME=$(/usr/libexec/java_home -v 1.7 -a x86_64)
export JAVA8_HOME=$(/usr/libexec/java_home -v 1.8 -a x86_64)
export JAVA_HOME=$JAVA8_HOME

export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export ANDROID_PLATFORM_TOOLS="$ANDROID_HOME/platform-tools"
export ANDROID_TOOLS="$ANDROID_HOME/tools"
# export ANDROID_AVD_HOME="$HOME/.android/avd"
export GRADLE_HOME="$HOME/Programs/gradle-2.14.1"
export GRADLE_USER_HOME="$HOME/.gradle/"
export PATH="$PATH:$ANDROID_HOME:$ANDROID_PLATFORM_TOOLS:$ANDROID_TOOLS:$GRADLE_HOME/bin"

# Groovy Stuff
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export PATH="$PATH:$GROOVY_HOME/bin"

export PATH="$PATH:/usr/local/sbin"

# Add git to path
export PATH="$PATH:/usr/local/git/bin"

alias avds="ls -l $ANDROID_AVD_HOME | grep avd"

# Ruby stuff
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/casey.kulm/.travis/travis.sh ] && source /Users/casey.kulm/.travis/travis.sh

#! /bin/bash

fun_open_chrome_black() {
  open -a /Applications/Google\ Chrome.app http://www.e-try.com/black.htm
}

fun_fullscreen_in_chrome() {
  /usr/bin/osascript \
  -e "tell application \"Google Chrome\"" \
  -e "activate" \
  -e "make new window" \
  -e "tell application \"System Events\"" \
  -e "keystroke \"f\" using {control down, command down}" \
  -e "end tell" \
  -e "tell application \"System Events\"" \
  -e "keystroke \"l\" using {command down}" \
  -e "end tell" \
  -e "end tell"
}

fun_open_chrome_full_black() {
  fun_fullscreen_in_chrome
  fun_open_chrome_black
}

alias ocfb=fun_open_chrome_full_black

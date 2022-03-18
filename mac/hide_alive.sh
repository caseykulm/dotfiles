#! /bin/bash

hide() {
  # open Chrome in fullscreen
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

  # open a fully black webpage
  open -a /Applications/Google\ Chrome.app http://www.e-try.com/black.htm
}

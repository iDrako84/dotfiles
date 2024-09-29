#!/bin/sh

BLANK='#1e293b'
CLEAR='#1e293b'
DEFAULT='#ffffff'
TEXT='#ffffff'
WRONG='#880000'
VERIFYING='#00ff00'

i3lock \
  -i ~/.config/backgrounds/lock.png \
  --insidever-color=$CLEAR \
  --ringver-color=$VERIFYING \
  \
  --insidewrong-color=$CLEAR \
  --ringwrong-color=$WRONG \
  \
  --inside-color=$BLANK \
  --ring-color=$DEFAULT \
  --line-color=$BLANK \
  --separator-color=$DEFAULT \
  \
  --verif-color=$TEXT \
  --wrong-color=$TEXT \
  --time-color=$TEXT \
  --date-color=$TEXT \
  --layout-color=$TEXT \
  --keyhl-color=$WRONG \
  --bshl-color=$WRONG \
  \
  --screen 1 \
  --blur 5 \
  --clock \
  --indicator \
  --time-str="%H:%M:%S" \
  --date-str="%A, %d-%m-%Y" \
  --keylayout 1


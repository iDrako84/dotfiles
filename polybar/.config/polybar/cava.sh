#! /bin/bash

playerctlstatus=$(playerctl status 2>/dev/null)
bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

if [[ $playerctlstatus == "" ]]; then
  echo ""
elif [[ $playerctlstatus =~ "Stopped" ]]; then
  echo ""
else
  # creating "dictionary" to replace char with bar
  i=0
  while [ $i -lt ${#bar} ]; do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i = i + 1))
  done

  # write cava config
  config_file="/tmp/polybar_cava_config"
  echo "
[general]
bars = 4

[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7
" >$config_file

  # read stdout from cava
  cava -p $config_file | while read -r line; do
    echo $line | sed $dict
  done

fi

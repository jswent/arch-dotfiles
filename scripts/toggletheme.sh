#!/bin/bash

export LOCAL="/home/jswent/.config/alacritty"

if [ -f $LOCAL/alacritty.yml.old ]; then
  mv $LOCAL/alacritty.yml $LOCAL/alacritty.yml.bak 
  mv $LOCAL/alacritty.yml.old $LOCAL/alacritty.yml
else 
  mv $LOCAL/alacritty.yml $LOCAL/alacritty.yml.old
  mv $LOCAL/alacritty.yml.bak $LOCAL/alacritty.yml
fi 



#!/bin/bash

alias ..='cd ..'
alias ...='cd ../..'

alias grep='grep --color'

alias ls='ls -Fh'
if [ "$(uname)" == "Darwin" ]; then
  alias ls='ls -G'
  alias ll='ls -l'
  alias lsd='gls -Fh --color --group-directories-first'
else
  alias ls='ls --color'
  alias lsd='ls --group-directories-first'
fi

alias l='ls'

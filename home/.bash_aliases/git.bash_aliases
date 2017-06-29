#!/bin/bash

alias gcl='git clone'
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gpf='git push -f'
alias gm='git pull && git merge'
alias grb='git fetch && git rebase origin/master'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias grs='git rebase --skip'
alias gnb='git checkout master && git pull && git checkout -b'
alias gnbb='git checkout -b'
alias gt='git checkout'
alias grf='git checkout --'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbdd='git branch -D'
alias gd='git diff'
alias gds='git diff --cached'
alias grm='git rm'
alias gl='git log'
alias gn='git rev-parse --abbrev-ref HEAD'
alias gup='git push --set-upstream origin `git rev-parse --abbrev-ref HEAD`'
alias gpr='git reset --hard origin/`git rev-parse --abbrev-ref HEAD`'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsdr='git stash drop'
alias grh='git reset --hard'
alias grhh='git reset --hard HEAD'
alias gun='git reset HEAD'
alias guc='git reset --soft HEAD^'
alias gunc='git reset HEAD^'
alias gsb='git stash list | awk '\''{printf("%s\n", $4)}'\'
alias gsdp='git diff stash@{0}^!'
alias gsd='git diff HEAD stash@{0}'
alias gbsrt='git branch --sort=-committerdate'
alias groot='cd $(git root)'
alias gconf='vim $(git root)/.git/config'

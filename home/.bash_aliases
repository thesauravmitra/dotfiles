#!/bin/bash

alias sx='ssh -X'

alias ..='cd ..'
alias ...='cd ../..'

alias grep='grep --color'
alias ls='ls -GFh'
alias lsd='gls -F --color --group-directories-first'

alias t='tmux attach || tmux'
alias tls='tmux ls'
alias tn='tmux new -s'
alias ta='tmux attach -t'

alias vim='/usr/local/bin/vim'
alias vi='vim'
alias v='vim'
alias l='ls'
alias p='python3'
alias python='python3'
alias pip='pip3'

alias sg='ssh geezer@95.175.128.12'
alias svm='ssh sm5214@shell3.doc.ic.ac.uk'
alias svmx='ssh -Y sm5214@shell3.doc.ic.ac.uk'
alias sb='ssh smitra@192.168.1.180'
alias sl='ssh smitra@www.uwot.xyz'
alias stom='ssh saurav@ssh.3ldh.org'

alias spearmint='python ~/Downloads/Spearmint-master/spearmint/main.py'

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

CASTLE="dotfiles"
alias hs="homesick status $CASTLE"
alias hcd="homesick cd $CASTLE"
alias hc="homesick commit $CASTLE"
alias hl="homesick link $CASTLE"
alias hu="homesick unlink $CASTLE"
alias hd="homesick diff $CASTLE"
alias ho="homesick open $CASTLE"
alias hpl="homesick pull $CASTLE"
alias hp="homesick push $CASTLE"
alias hs="homesick status $CASTLE"
alias ht="homesick track"

alias nps='npm run start'
alias npt='npm run test'
alias npd='npm run dev'
alias npi='npm install'

alias psi='python setup.py install'

alias br='. ~/.bash_profile'

alias ba='vim ~/.bash_aliases'
alias brc='vim ~/.bashrc'
alias vrc='vim ~/.vimrc'

alias print='open https://ictprintservice-mono.cc.imperial.ac.uk/index.cfm?dest=index.cfm&'

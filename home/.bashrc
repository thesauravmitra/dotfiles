#!/bin/bash

[ -s ~/.profile ] && . ~/.profile
[ -s ~/.git-completion.bash ] && . ~/.git-completion.bash
[ -s ~/.iterm2_shell_integration.bash ] && . ~/.iterm2_shell_integration.bash

if [ -d ~/.bash_aliases ]; then
  for f in ~/.bash_aliases/.bash_aliases ~/.bash_aliases/*.bash_aliases; do
    [ -s $f ] && . $f
  done
elif [ -s ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

[ -s ~/.alias_completion ] && . ~/.alias_completion

i=$(($SHLVL-1))
if [ -n "$TMUX" ]; then
  (( i -= 2 ))
fi

if [[ $i -gt 0 ]]; then
  INPUT_PROMPT=$(printf '%.0s-' $(seq 1 $i))
else
  INPUT_PROMPT=
fi

if [ -s ~/.git-prompt.sh ]; then
  . ~/.git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=1
  export GIT_PS1_SHOWSTASHSTATE=1
  export GIT_PS1_SHOWUNTRACKEDFILES=1
  export GIT_PS1_SHOWUPSTREAM="auto"
  export GIT_PS1_SHOWCOLORHINTS=1

  if [ -z ${PROMPT_SET+x} ]; then
    PROMPT_SET=
    PROMPT_COMMAND="set_ps1${PROMPT_COMMAND:+; $PROMPT_COMMAND}"
  fi

  set_ps1() {
    local STATUS_CODE=$?
    local BOLD_CYAN="\[\e[1;36m\]"
    local RED="\[\e[1;31m\]"
    local GREEN="\[\e[1;32m\]"
    local YELLOW="\[\e[1;33m\]"
    local RESET_COLOR="\[\e[m\]"
    local DNO="¯\_(ツ)_/¯"

    if [[ $STATUS_CODE -eq 0 ]]; then
      local SUCC_COLOR=$GREEN
    else
      local SUCC_COLOR=$RED
    fi
    local N_JOBS=`jobs -p | wc -l | tr -d " "`
    if [[ $N_JOBS -gt 0 ]]; then
      local JOBS="[$YELLOW$N_JOBS$RESET_COLOR]"
    fi

    if [ -f ~/.my_baby ]; then
      local START="\# ${BOLD_CYAN}$DNO${RESET_COLOR} \w"
    else
      local START="\# \w"
    fi
    local END=" ${SUCC_COLOR}λ${RESET_COLOR}$JOBS\n$INPUT_PROMPT  "

    __git_ps1 "$START" "$END"
  }
fi

if hash brew 2> /dev/null; then
  [ -s `brew --prefix`/etc/profile.d/z.sh ] && . `brew --prefix`/etc/profile.d/z.sh
fi

h() {
  echo `whoami`@`ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}'`
}

hh() {
  echo `whoami`@`hostname`
}

rln() {
  mv `readlink $1` $1
}

if [[ "$(uname)" == "Darwin" ]]; then
  copy() {
    osascript - "$@" <<'END' 2> /dev/null
on run {a}
set the clipboard to POSIX file (POSIX path of ((POSIX file a) as alias))
end
END
  }
fi

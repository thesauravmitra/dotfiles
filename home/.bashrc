#!/bin/bash
[ -s ~/.git-prompt.sh ] && . ~/.git-prompt.sh
[ -s ~/.git-completion.bash ] && . ~/.git-completion.bash
[ -s ~/.bash_aliases ] && . ~/.bash_aliases
[ -s ~/.alias_completion ] && . ~/.alias_completion

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

  local START="\# ${BOLD_CYAN}$DNO${RESET_COLOR} \w"
  local END=" ${SUCC_COLOR}λ${RESET_COLOR}$JOBS\n  "

  __git_ps1 "$START" "$END"
}

. `brew --prefix`/etc/profile.d/z.sh

h() {
  echo smitra@`ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}'`
}

hh() {
  echo smitra@`hostname`
}

copy() {
  osascript - "$@" <<'END' 2> /dev/null
on run {a}
set the clipboard to POSIX file (POSIX path of ((POSIX file a) as alias))
end
END
}

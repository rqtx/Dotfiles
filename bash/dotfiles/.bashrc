#
# ~/.bashrc
#

if [ -f ~/.bash_alias ]; then
  . ~/.bash_alias
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.bash_local_alias ]; then
  . ~/.bash_local_alias
fi

if [ -f ~/.bash_aws ]; then
  . ~/.bash_aws
fi

if [ -f ~/.bash_k8s ]; then
  . ~/.bash_k8s
fi

if [ -f ~/.bash_gcloud ]; then
  . ~/.bash_gcloud
fi

eval "$(starship init bash)"

if command -v tmux >/dev/null 2>&1 && [ "${DISPLAY}" ]; then
    # if not inside a tmux session, and if no session is started, start a new session
    # [ -z "${TMUX}" ] && (tmux attach || tmux) >/dev/null 2>&1
    [ -z "${TMUX}" ] && (tmux) >/dev/null 2>&1
fi

GOPATH=$HOME/go
PATH=$PATH:$GOROOT/bin:$GOPATH/bin

VISUAL=nvim
EDITOR=$VISUAL

complete -C /usr/bin/vault vault

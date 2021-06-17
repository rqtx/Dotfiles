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

PROMPT_COMMAND=''

function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $? -shell bash -newline -modules venv,user,host,ssh,cwd,perms,git,hg,jobs,exit)"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

if command -v tmux >/dev/null 2>&1 && [ "${DISPLAY}" ]; then
    # if not inside a tmux session, and if no session is started, start a new session
    [ -z "${TMUX}" ] && (tmux attach || tmux) >/dev/null 2>&1
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#PATH="/home/blackbird/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/home/blackbird/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/blackbird/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/blackbird/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/blackbird/perl5"; export PERL_MM_OPT;
NODE_PATH=".nvm/versions/node/v10.16.0/bin/";

GOPATH=$HOME/go
PATH=$PATH:$GOROOT/bin:$GOPATH/bin

VISUAL=nvim
EDITOR=$VISUAL


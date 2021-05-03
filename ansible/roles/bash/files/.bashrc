#
# ~/.bashrc
#

export VISUAL=nvim
export EDITOR= $VISUAL

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}


if test -f ~/.bash_alias ; then
  . ~/.bash_alias
fi

if test -f ~/.git-completion.bash ; then
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
    PS1="$($GOPATH/bin/powerline-go -error $?)"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH="/home/blackbird/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/blackbird/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/blackbird/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/blackbird/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/blackbird/perl5"; export PERL_MM_OPT;
NODE_PATH=".nvm/versions/node/v10.16.0/bin/";

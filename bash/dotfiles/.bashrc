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

# Atualiza o path para ser possível acessar o comando aws, entre outros
export PATH=$PATH:$HOME/.composer/vendor/bin:$HOME/.local/bin
export PATH="~/.local/bin:$PATH"
test -x ~/.local/bin/aws || chmod u+x ~/.local/bin/aws
test -x ~/.local/bin/sam || chmod u+x ~/.local/bin/sam

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion


# Atualiza o path para ser possível acessar o comando aws, entre outros
#export PATH=~/.local/bin:$PATH
if test -f ~/.local/bin/aws ; then
  chmod u+x ~/.local/bin/aws 
fi

if test -f ~/.bash_alias ; then
  . ~/.bash_alias
fi

if test -f ~/.git-completion.bash ; then
  . ~/.git-completion.bash
fi

if [ -f ~/.bash_local_alias ]; then
  . ~/.bash_local_alias
fi

PROMPT_COMMAND=''

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

test -x ~/.local/bin/aws || chmod u+x ~/.local/bin/aws
export KUBECONFIG=~/.kube/config-ajudici
source <(kubectl completion bash)

export AWS_SAM_LOCAL=1
source <(kubectl completion bash)

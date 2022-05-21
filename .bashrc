# .bashrc
# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export browser="firefox"

#Aliases
## vim
alias v="nvim"
alias vv="nvim /home/rei/vimwiki/index.md"
alias vim="nvim"
alias vimwiki="nvim /home/rei/vimwiki/index.md"
## bash
alias sb="echo -e '\e[1;34m Sourcing .bashrc... \e[0m' && source $HOME/.bashrc"
alias eb="nvim $HOME/.bashrc"
## pacman
alias ss="sudo pacman -S"
alias ssp="paru -S"
# website aliases
alias w="cd ~/website"
alias wm="echo -e '\e[1;34m Create new website file \e[0' && cd ~/website && hugo new"
# firefox aliases
alias fs='urxvt -e firefox --search'
# lf
alias lf='lfub'
# yt-dlp
alias ytmus='yt-dlp --write-thumbnail --convert-thumbnails png --embed-metadata'
alias ytm4a='yt-dlp -f 140 --embed-thumbnail --embed-metadata'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
alias config='/usr/bin/git --git-dir=/home/rei/.cfg/ --work-tree=/home/rei'

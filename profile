# for iterm to render colors
# export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Add bin of home directory
export PATH=$PATH:$HOME/bin

# import z sh
source ~/.dotfiles/z.sh

# set vim as default editor
export EDITOR=vim

# alias
# alias vim=/usr/local/bin/vim
alias vim=/Applications/MacVim.app/Contents/bin/vim
alias ctags=/usr/local/bin/ctags
alias g++="g++-6"
# alias python=/usr/local/bin/python2.7
# alias python3=/usr/local/bin/python3.6

# settings
# for setting virtual env across tmux sessions
if [ -n "$VIRTUAL_ENV" ]; then
    source $VIRTUAL_ENV/bin/activate;
fi

# functions
# allowing global pip
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

venv(){
	case $1 in
		act)
			source $2/bin/activate
			if [[ -n "$TMUX" ]]; then
				tmux set-environment VIRTUAL_ENV $VIRTUAL_ENV
			fi
			;;
		dact)
			if [[ -n "$VIRTUAL_ENV" ]]; then
				deactivate
			fi
			if [[ -n "$TMUX" ]]; then
				tmux set-environment -u VIRTUAL_ENV
			fi
			;;
	esac
}

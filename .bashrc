if [ -f $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

export EDITOR=vim
export XDG_CONFIG_HOME="$HOME/.config/"

# support GPG for SSH auth. Review this.
#if [ -f "${HOME}/.gpg-agent-info" ]; then
#     source "${HOME}/.gpg-agent-info"
#       export GPG_AGENT_INFO
#       export SSH_AUTH_SOCK
#       export SSH_AGENT_PID
#else
#    eval $( gpg-agent --daemon --write-env-file ~/.gpg-agent-info )
#fi

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye

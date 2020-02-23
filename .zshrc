# enable history and set related options
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt hist_expire_dups_first    # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups          # ignore duplicated commands history list
setopt hist_ignore_space         # ignore commands that start with space
setopt hist_verify               # show command with history expansion to user before running it
setopt inc_append_history        # add commands to HISTFILE in order of execution

# set PATH so it includes user's private bin if it exists
[ ! -d "$HOME/bin" ] || PATH="$HOME/bin:$PATH"

# source my local exports
[ ! -f $HOME/.exports ] || source $HOME/.exports

# source vte.sh to keep tilix happy
[ ! $TILIX_ID ] || source /etc/profile.d/vte.sh

# source powerlevel10k zsh theme
[ ! -f /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ] || source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# powerlevel10k configs | To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ ! -f ~/.p10k.zsh ] || source ~/.p10k.zsh

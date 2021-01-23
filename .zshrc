# Read aliases
[[ -f ~/.aliases ]] && . ~/.aliases

fpath+=$HOME/.zsh/pure
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
#bindkey -e

## Additional keybinds
# Enable Alt+ArrowKeys to move one word at a time
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
# del key
bindkey "^[[3~" delete-char
# Delete whole word forwards (alt+del)
bindkey "^[[3;3~" kill-word
# page (up|down)
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
# end & home
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
# Go in the reverse of `tab` when auto-completing
bindkey "^[[Z" reverse-menu-complete

autoload -U promptinit; promptinit
zstyle :prompt:pure:git:stash show yes
prompt pure

# The following lines were added by compinstall
zstyle :compinstall filename '/home/icelk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

[[ -f ~/.rc ]] && . ~/.rc
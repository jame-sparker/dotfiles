# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
# End of lines configured by zsh-newuser-install

## The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

# Enable Auto completion
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist # more auto completion
setopt COMPLETE_ALIASES # auto completion for aliases
compinit
## End of lines added by compinstall

# Enable colors and change prompt:
#autoload -Uz colors ; colors
autoload -U colors && colors

# Set editor
export EDITOR=vim

# vi mode
bindkey -v
export KEYTIMEOUT=1 # 10ms for key sequences

# Alt arrow to jump between words and avoid getting into vim mode
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# History based on partially typed commands
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

# Navigation by directory names
setopt  autocd autopushd

# Fast cd
alias di='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# Multiple dots
function expand-dots() {
    local MATCH
    if [[ $LBUFFER =~ '\.\.\.+' ]]; then
        LBUFFER=$LBUFFER:fs%\.\.\.%../..%
    fi
}

function expand-dots-then-expand-or-complete() {
    zle expand-dots
    zle expand-or-complete
}

function expand-dots-then-accept-line() {
    zle expand-dots
    zle accept-line
}

zle -N expand-dots
zle -N expand-dots-then-expand-or-complete
zle -N expand-dots-then-accept-line
bindkey '^I' expand-dots-then-expand-or-complete
bindkey '^M' expand-dots-then-accept-line

# ===== Plugins and External Files ====

# zsh-z plugin
source ~/.zsh/zsh-z.plugin.zsh

# Auto suggestion plugin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=6"
bindkey '^ ' autosuggest-accept

# Alias tips plugin
source ~/.zsh/alias-tips/alias-tips.plugin.zsh

# Syntax highlighting plugin
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=yellow

# Alias definitions.
[ -f ~/.zsh/.zsh_aliases ] && source ~/.zsh/.zsh_aliases

# Set paths
source ~/.zsh/path

# Dotfile configurations
source ~/.zsh/.dotfiles

# ====== User defined functions ======

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Stardust dictionary console version
d() {
    sdcv "$1" | less
}

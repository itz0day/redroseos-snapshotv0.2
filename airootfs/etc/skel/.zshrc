source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

PROMPT='%B%F{red}[%n@%m]%f%b-%B%F{green}[%~]%f%b %F{white}$ %f'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# --- RedRose Key Fixes ---

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[3~" delete-char
bindkey '^?' backward-delete-char

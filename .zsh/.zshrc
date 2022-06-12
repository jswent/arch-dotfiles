# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi 

### ZSH HOME
export ZSH=$HOME/.zsh

## EDTIOR
export EDITOR='nvim'
export VISUAL='nvim'

## ZSH HISTORY
export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=100000000
export SAVEHIST=100000000
setopt appendhistory
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Source aliases
source $ZSH/.aliases

# Zsh to use the same colors as ls
eval $(env TERM=alacritty-color dircolors)
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}  

# Powerlevel10k theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Plugins
#source $ZSH/plugins/git.plugin.zsh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Keymaps 
bindkey '^ ' autosuggest-accept

# neofetch
neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ─── Dracula Terminal Setup — Desktop (WSL2 Fedora 43) ───

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"  # Sobrescrito pelo Starship
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Starship prompt
eval "$(starship init zsh)"

# Sysinfo no startup
fastfetch

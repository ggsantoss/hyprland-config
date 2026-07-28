# ============================================
# .zshrc - Configuração Principal
# ============================================

# --- Powerlevel10k Instant Prompt ---
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- Oh My Zsh ---
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# --- Powerlevel10k Config ---
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ============================================
# PATHS & ENVIRONMENT
# ============================================

# Caminhos principais
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$PATH:$HOME/.dotnet/tools"

# Bun
export BUN_INSTALL="$HOME/.bun"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# NVM (Node Version Manager) - VERSÃO LIMPA
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# --- NNN (File Manager) ---
export NNN_FIFO='/tmp/nnn.fifo'
export NNN_PLUG='p:preview-tui'
export NNN_OPENER="kitty -e nvim"
alias nnn='nnn -P preview-tui'

# --- Kitty ---
export KITTY_LISTEN_ON=unix:/tmp/kitty

# ============================================
# ALIASES & FUNCTIONS
# ============================================

# Seus aliases aqui
# alias ll='ls -alF'
# alias update='sudo pacman -Syu'

# Fastfetch - EXIBIÇÃO DO SISTEMA
# Mostra o fastfetch ao abrir o terminal
if command -v fastfetch &> /dev/null; then
    fastfetch
fi

# ============================================
# ARQUIVO LOCAL (NÃO VERSIONAR)
# ============================================
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
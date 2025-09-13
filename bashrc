# Append dotfile path
export BASHRC_PATH="$(realpath ~/.bashrc)"
export DOTFILES_PATH="$(dirname "$BASHRC_PATH")"

# Source common shell stuff
source "${DOTFILES_PATH}/shell/utils"
source "${DOTFILES_PATH}/shell/aliases"

# Export dotfiles path
BASHRC_PATH="$(realpath ${BASH_SOURCE[0]})"
DOTFILES_PATH="$(dirname "$BASHRC_PATH")"

# Source common shell stuff
source "${DOTFILES_PATH}/shell/utils"
source "${DOTFILES_PATH}/shell/aliases"

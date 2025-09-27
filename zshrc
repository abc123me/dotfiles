# Append dotfile path
export ZSHRC_PATH="$(realpath ~/.zshrc)"
export DOTFILES_PATH="$(dirname "$ZSHRC_PATH")"

# Bind some common keys
bindkey "^[[3~"   delete-char   # Delete
bindkey "^H"      delete-word   # Ctrl+Delete
bindkey "^[[1;5C" forward-word  # Ctrl+Right
bindkey "^[[1;5D" backward-word # Ctrl+Left

# Fuzzy find
[ -x "$(which fzf)" ] && source <(fzf --zsh) || true

# Setup tab completion
source "${DOTFILES_PATH}/zsh/completion.zsh"

# Purity prompt theme
source "${DOTFILES_PATH}/zsh/purity.zsh"

# Source common shell stuff
source "${DOTFILES_PATH}/shell/env"
source "${DOTFILES_PATH}/shell/utils"
source "${DOTFILES_PATH}/shell/aliases"

# Enable ZSH history
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=100000
setopt append_history
setopt inc_append_history
setopt share_history

_comp_options+=(globdots)   # With hidden files

setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

# Directory stack alias
if [ -x /usr/bin/dircolors ]; then
	dirs_colorized() {
		let index=0
		for dir in $(dirs | head -n 10); do
			color="\e[01;34m"
			if [ `expr $index % 2` -eq 0 ]; then
				color="\e[01;32m"
			fi
			echo -e "$color$index: $dir"
			let index=$index+1
		done
		echo -ne "\e[0m"
	}
	alias d='dirs_colorized';
else
	alias d='dirs -v';
fi

# And index
for index ({1..9}); do
	alias "$index"="cd +${index}";
done
unset index

# Allows tab completion while editing commands
autoload -Uz edit-command-line

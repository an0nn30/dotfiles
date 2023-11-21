#!/bin/bash

# Function to check if a directory exists and back it up
backup_directory() {
	local dir=$1
	if [ -d "$dir" ]; then
		read -p "Do you want to backup and replace the existing $dir? (y/n) " -n 1 -r
		echo
		if [[ $REPLY =~ ^[Yy]$ ]]; then
			echo "Backing up $dir to ${dir}.bak..."
			mv "$dir" "${dir}.bak"
		else
			echo "Skipping backup for $dir."
		fi
	fi
}

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
	echo "Homebrew not found. Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Backup and install dotfiles
dotfiles_dir="$(dirname "$0")"
config_dir="$HOME/.config"

# Backup and install nvim config
backup_directory "$config_dir/nvim"
mkdir -p "$config_dir/nvim"
cp -r "$dotfiles_dir/.config/nvim" "$config_dir"

# Backup and install alacritty config
backup_directory "$config_dir/alacritty"
mkdir -p "$config_dir/alacritty"
cp -r "$dotfiles_dir/.config/alacritty" "$config_dir"

# Install TPM (Tmux Plugin Manager)
tmux_plugin_dir="$HOME/.tmux/plugins/tpm"
if [ ! -d "$tmux_plugin_dir" ]; then
	echo "Installing TPM (Tmux Plugin Manager)..."
	git clone https://github.com/tmux-plugins/tpm "$tmux_plugin_dir"
else
	echo "TPM is already installed."
fi

# Install applications and tools from Brewfile
echo "Installing packages from Brewfile..."
brew bundle --file="$dotfiles_dir/Brewfile"

echo "Installation complete!"

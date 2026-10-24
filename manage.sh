#!/usr/bin/env bash

# Define the files you want to manage (relative to the home directory)
DOTFILES=(
    ".bashrc"
    ".tmux.conf"
    ".vimrc"
    ".zshrc"
    ".screenrc"
    ".gitconfig"
    "aliases.sh"
)

DOTFILES_DIR="$HOME/light-dotfiles"

install_links() {
    echo "🔗 Creating symlinks..."
    for file in "${DOTFILES[@]}"; do
        TARGET="$HOME/$file"
        SOURCE="$DOTFILES_DIR/$file"

        # Ensure parent directories exist (e.g., ~/.config/kitty/)
        mkdir -p "$(dirname "$TARGET")"

        # If it's already a symlink pointing to our dotfiles, skip it
        if [[ -L "$TARGET" ]] && [[ "$(readlink "$TARGET")" == "$SOURCE" ]]; then
            echo "✅ Already linked: $file"
            continue
        fi

        # If a real vanilla file exists, back it up
        if [[ -f "$TARGET" ]] && [[ ! -L "$TARGET" ]]; then
            echo "📦 Backing up vanilla file: $file -> $file.bak"
            mv "$TARGET" "$TARGET.bak"
        fi

        # Create the symlink
        ln -s "$SOURCE" "$TARGET"
        echo "🔗 Linked: $file"
    done
}

remove_links() {
    echo "🔄 Breaking symlinks and restoring vanilla state..."
    for file in "${DOTFILES[@]}"; do
        TARGET="$HOME/$file"

        # Check if it is a symlink
        if [[ -L "$TARGET" ]]; then
            rm "$TARGET"
            echo "🗑️ Removed symlink: $file"

            # Restore the vanilla backup if it exists
            if [[ -f "$TARGET.bak" ]]; then
                mv "$TARGET.bak" "$TARGET"
                echo "⏪ Restored vanilla backup: $file"
            fi
        else
            echo "ℹ️ Skipping (not a symlink): $file"
        fi
    done
}

case "$1" in
    link)
        install_links
        ;;
    unlink)
        remove_links
        ;;
    *)
        echo "Usage: $0 {link|unlink}"
        exit 1
        ;;
esac

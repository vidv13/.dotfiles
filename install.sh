#!/bin/bash

#echo "# See: https://samuelsson.dev/sign-git-commits-on-github-with-gpg-in-macos/" >>$GPG_AGENT_CONF

move_with_backup() {
  local src="$1"
  local backup="${src}.old"

  if [ -f "$src" ] && [ ! -f "$backup" ]; then
    mv "$src" "$backup"
  fi
}

move_with_backup ~/.zshrc

stow zsh .oh-my-zsh
# also might want to 'stow' tmux gnupg alacritty zellij .oh-my-zsh karabiner ghostty claude

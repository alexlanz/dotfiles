#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils/base.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    execute "sh -c \"\$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)\"" "Installation"

    execute "cp ../applications/oh-my-zsh/themes/krumer.zsh-theme ~/.oh-my-zsh/themes/krumer.zsh-theme" "Copying theme"
    execute "cp -R ../applications/oh-my-zsh/custom/* ~/.oh-my-zsh/custom" "Copying custom folder"

    execute "rm -rf ~/.zshrc" "Remove old .zshrc file"
    execute "cp ../applications/oh-my-zsh/.zshrc ~/.zshrc" "Copy new .zshrc file"

    execute "( cd ~/.oh-my-zsh && (git add -A && (git diff --cached --exit-code; if [ $? -ne 0 ]; then git commit -m \"Custom Setup\"; fi )))" "Commiting settings"

}

main

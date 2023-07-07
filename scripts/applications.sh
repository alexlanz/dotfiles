#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils/base.sh' \
    && source '../utils/brew.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    brew_install '1Password' '1password' 'cask'

    brew_install 'Google Chrome' 'google-chrome' 'cask'
    brew_install 'Firefox' 'firefox' 'cask'
    
    brew_install 'iTerm' 'iterm2' 'cask'
    brew_install 'Marked' 'marked' 'cask'
    
}

main

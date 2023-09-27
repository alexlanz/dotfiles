#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils/base.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    if cmd_exists 'git'; then
        execute "git config --global user.name \"Alex Lanz\"" "Username Configuration"
        execute "git config --global user.email \"alex.lanz@aboutbits.it\"" "Email Configuration"
        execute "git config --global push.default simple" "Push Configuration"
        execute "git config --global core.hooksPath .githooks" "Configure Git hooks"
    fi

}

main

#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils/base.sh' \
    && source '../utils/brew.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

	brew_install 'python2' 'python'
	brew_install 'python3' 'python3'

}

main

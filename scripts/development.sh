#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../utils/base.sh' \
    && source '../utils/brew.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    brew_install 'nvm (Node Version Manager)' 'nvm'
    execute "source \$(brew --prefix nvm)/nvm.sh" "Source nvm"
    execute "nvm install 16" "Install Node 16"
    execute "nvm alias default 16" "Set Node 16 as default"

    execute "curl -s "https://get.sdkman.io" | bash" "SDKMAN"

    # brew_install 'webp' 'webp'
    
    # brew_install 'mkcert' 'mkcert'
    # brew_install 'nss' 'nss'
    # execute "mkcert -install" "mkcert"

}

main

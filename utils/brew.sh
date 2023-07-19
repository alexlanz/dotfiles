#!/bin/bash

brew_install() {

    declare -r APPLICATION_DESCRIPTION="$1"
    declare -r APPLICATION_NAME="$2"
    declare -r CMD="$3"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Check if `Homebrew` is installed

    if ! cmd_exists 'brew'; then
        print_error "$APPLICATION_DESCRIPTION (\`brew\` is not installed)"
        return 1
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install the specified formula

    if brew "$CMD" list "$APPLICATION_NAME" &> /dev/null; then
        print_success "$APPLICATION_DESCRIPTION"
    else
        execute "brew $CMD install $APPLICATION_NAME" "$APPLICATION_DESCRIPTION"
    fi

}

brew_tap() {

    declare -r TAP_DESCRIPTION="$1"
    declare -r TAP_NAME="$2"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Check if `Homebrew` is installed

    if ! cmd_exists 'brew'; then
        print_error "$APPLICATION_DESCRIPTION (\`brew\` is not installed)"
        return 1
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Reference the specified tap

    execute "brew tap $TAP_NAME" "$TAP_DESCRIPTION"

}

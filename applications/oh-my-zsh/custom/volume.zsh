volume() {

    declare -r LEVEL="$1"

    osascript -e "set Volume $LEVEL"

}

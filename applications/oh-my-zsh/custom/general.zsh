alias todo="code ~/Dropbox/ToDo"
alias aboutbits="code ~/Dropbox/Shares/AboutBits"

desktop_hide() {
    defaults write com.apple.finder CreateDesktop false
    killall Finder
}

desktop_show() {
    defaults write com.apple.finder CreateDesktop true
    killall Finder
}

alias dth="desktop_hide"
alias dts="desktop_show"

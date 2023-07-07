# Basic
alias gits='git status'
alias gita='git add'
alias gitaa='git add -A'
alias gitc='git commit -S -m'
alias gitac='git add -A && git commit -S -m'

# Remote
alias gitu='git push'
alias gituo='git push origin'
alias gituu='git push upstream'
alias gituso='git push --set-upstream origin $(git symbolic-ref --short HEAD)'
alias gitusu='git push --set-upstream upstream $(git symbolic-ref --short HEAD)'
alias gitd='gitdr'
alias gitdm='git pull -S'
alias gitdr='git pull -S --rebase=merges'

alias gitrc='git rebase --continue'
alias gitra='git rebase --abort'

alias gitra='git remote add'
alias gitrau='git remote add upstream'
alias gitf='git fetch'
alias gitfu='git fetch upstream'

# Branch
alias gitbl='git branch --all'
alias gitbd='git branch -D'
alias gito='git checkout'
alias gitm='git merge -S'

git_merge_upstream() {
   if [[ $1 = "" ]]; then
      gitm upstream/$(git symbolic-ref --short HEAD)
   else
      gitm upstream/$1
   fi
}

alias gitmu='git_merge_upstream'

# Helper
alias gitx='git diff'
alias gitl='git log'
alias gitr='git reset --hard && git clean -f -d'

# Tags
git_tag_add_leightweight() {
   git tag $1
}

git_tag_add_annotated() {
   git tag -s -a $1 -m $2
}

git_tag_remove() {
   git_tag_remove_local $1
   git_tag_remove_remote $1
}

git_tag_remove_local() {
   git tag -d $1
}

git_tag_remove_remote() {
   git push origin :refs/tags/$1
}

alias gittl='git tag'
alias gittal='git_tag_add_leightweight'
alias gittaa='git_tag_add_annotated'
alias gittu='git push --tags'
alias gittr='git_tag_remove'
alias gittrl='git_tag_remove_local'
alias gittrr='git_tag_remove_remote'

# Stash
alias gitsu='git stash push --include-untracked'
alias gitsd='git stash pop'
alias gitsl='git stash list'

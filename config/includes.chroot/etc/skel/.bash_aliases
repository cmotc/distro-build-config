
git_add_and_commit(){
    git add . && git commit -am "$1"
}

alias commit=git_add_and_commit


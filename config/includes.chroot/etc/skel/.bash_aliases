
git_add_and_commit(){
    git add . && git commit -am "$1"
}

alias commit=git_add_and_commit

git_push_with_proxy(){
    torsocks git push $1 $2
}

alias push=git_push_with_proxy

git_pull_with_proxy(){
    torsocks git pull $1 $2
}

alias pull=git_pull_with_proxy

git_clone_with_proxy(){
    torsocks git clone $1 $2
}

alias git="torsocks git"

start_tor_arm(){
    sudo -u debian-tor arm
}

alias torarm=start_tor_arm

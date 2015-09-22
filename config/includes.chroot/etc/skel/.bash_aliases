
conky_start(){
    #Only start conky if the compositor is functioning
    sleep 3
    compton &
    conky &
}

alias cnkystrt=conky_start

conky_stop(){
    if [ $(check_conky) = 1 ]; then
        killall compton
        killall conky
    fi
}

alias cnkystp=conky_stop

conky_restart(){
   #Stop conky and compton
   conky_stop
   conky_start
}

alias cnkyrstrt=conky_restart

git_add_and_commit(){
    git add . && git commit -am "$@"
}

alias commit=git_add_and_commit

git_push_with_proxy(){
    torsocks git push "$@"
}

alias push=git_push_with_proxy

git_pull_with_proxy(){
    torsocks git pull "$@"
}

alias pull=git_pull_with_proxy

git_clone_with_proxy(){
    torsocks git clone "$@"
}

alias clone=git_clone_with_proxy

alias git="torsocks git"

start_tor_arm(){
    sudo -u debian-tor arm
}

alias torarm=start_tor_arm

check_conky(){
    echo "$(ps aux | grep conky | grep -v "grep conky" | wc -l)"
}

alias chckcnky=check_conky

youtube_dl_with_proxy(){
    torsocks youtube-dl "$@"
}

alias youtube-dl=youtube_dl_with_proxy

wget_with_proxy(){
    torsocks wget "$@"
}

alias wget=wget_with_proxy

torify_terminal(){
    . torsocks
}

alias torminal=torify_terminal


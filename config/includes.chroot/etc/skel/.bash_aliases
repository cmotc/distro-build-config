
conky_start(){
    #Only start conky if the compositor is functioning
    sleep 3
    compton &
    conky &
}

conky_stop(){
    if [ $(check_conky) = 1 ]; then
        killall compton
        killall conky
    fi
}

conky_restart(){
   #Stop conky and compton
   conky_stop
   conky_start
}

git_add_and_commit(){
    git add . && git commit -am "$@"
}

git_add_and_commit_and_push(){
    git add . && git commit -am "$@" && git push
}

git_push_with_proxy(){
    torsocks git push "$@"
}

git_pull_with_proxy(){
    torsocks git pull "$@"
}

git_clone_with_proxy(){
    torsocks git clone "$@"
}

start_tor_arm(){
    sudo -u debian-tor arm
}

check_conky(){
    echo "$(ps aux | grep conky | grep -v "grep conky" | wc -l)"
}

youtube_dl_with_proxy(){
    torsocks youtube-dl "$@"
}

wget_with_proxy(){
    torsocks wget "$@"
}

torify_terminal(){
    . torsocks on
}

proxy_lynx(){
    torsocks lynx
}

run_once(){
    pgrep $@ > /dev/null || ($@ &)
}

alias bleachbit="bleachbit  -co --preset"
alias dialog="dialog --colors"
alias tor-arm="sudo -u debian-tor arm"
alias rm=srm -z
alias torminal=torify_terminal

alias lynx=proxy_lynx
alias mutt="torsocks mutt &> /dev/null"
alias finch="torsocks finch &> /dev/null"
alias wget=wget_with_proxy
alias youtube-dl=youtube_dl_with_proxy

alias hg="torsocks hg"
alias ssh="torsocks ssh"

alias chckcnky=check_conky
alias cnkystrt=conky_start
alias cnkystp=conky_stop
alias cnkyrstrt=conky_restart

alias git="torsocks git"
alias commit=git_add_and_commit
alias clone=git_clone_with_proxy
alias cpush=git_add_and_commit_and_push
alias push=git_push_with_proxy
alias pull=git_pull_with_proxy

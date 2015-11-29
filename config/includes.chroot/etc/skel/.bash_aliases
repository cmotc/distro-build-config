
alias git="torsocks git"
alias ssh="torsocks ssh"

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

git_add_and_commit_and_push(){
    git add . && git commit -am "$@" && git push
}

alias commit=git_add_and_commit

alias cpush=git_add_and_commit_and_push

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

proxy_lynx(){
    torsocks lynx
}

alias lynx=proxy_lynx

test_awesome(){
    mv $HOME/.config/awesome/rc.lua $HOME/.config/awesome/rc.lua.bak
    update-menus 
    cp /etc/xdg/awesome/debian/menu.lua $HOME/.config/awesome/debian/menu.lua
    cp $HOME/Projects/Distro_OS_projects/packages/svirfneblin-panel/etc/xdg/svirfneblin/rc.lua $HOME/.config/awesome/rc.lua
}

alias awere=test_awesome

alias rm=srm

run_once(){
    pgrep $@ > /dev/null || ($@ &)
}

alias bleachbit="bleachbit  -co --preset"

alias mutt="torsocks mutt > /dev/null"



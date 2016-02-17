
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
    git add . && git commit -am "$@" && torsocks git push
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
	TORSOCKS_CONF_FILE="/etc/tor/torsocks.get.conf"
    torsocks wget --https-only "$@"
}

curl_with_proxy(){
	TORSOCKS_CONF_FILE="/etc/tor/torsocks.get.conf"
    torsocks curl "$@"
}

torsocks_terminal(){
    bash -c ". torsocks on && terminator $@ -l default -p $HOME/.torminalrc -u -T Torminal" # &> /dev/urandom
}

toron(){
    . torsocks on
}

toroff(){
    . torsocks off
}

proxy_lynx(){
    torsocks lynx
}

run_once(){
    pgrep $@ > /dev/null || ($@ &)
}

unset_display(){
    unset "$1"
    UNSET_TEST=$(eval "echo \$$1")
    echo "testing unset $1 $UNSET_TEST"
}

torcheck(){
    using_tor=false
    unalias curl
    TOR_CHECK_RESULT=$(curl https://torcheck.xenobite.eu | grep "Your IP is identified to be a Tor-EXIT.") 
    if [ ! "$TOR_CHECK_RESULT" == "" ]; then
        USING_TOR=true
    fi
    if [ $USING_TOR ]; then
        echo "Your IP is identified to be a Tor-EXIT."
        echo "=====           NOTICE            ====="
        echo "This function merely verified that an unaliased copy of curl
would use tor, as with the command . torsocks on. This does not mean that your
connection is end-to-end encrypted, or that it's using https, or that you are
avoiding protocol or metadata leaks. Please use caution."
    else
        echo "Your IP is NOT identified to be a Tor-EXIT."
    fi
    alias curl=curl_with_proxy
    unset USING_TOR
}

unalias_torsocks(){
    unalias git
    unalias ssh
    unalias hg
    unalias wget
    unalias finch
    unalias curl
    unalias mutt
    unalias youtube-dl
    unalias lynx
}

gittorrent_clone(){
    \git \clone "$@"
}

start_ratox(){
    cd $HOME/.config/ratox && ratox "$@ ./.ratox.tox"
}

send_text(){
    \curl http://textbelt.com/text -d "number=$1" -d "message=$2"
}
start_xombrero(){
    if [ -f "$HOME/.xombrero/cookies.txt" ]; then
        echo "Clearing cookies befor starting"
        rm -v "$HOME/.xombrero/cookies.txt"
    fi
    /bin/sh -c xombrero "$@"
}
overwrite(){
    dd if=/dev/urandom of="$HOME/overwrite"
    \rm "$HOME/overwrite"
}
myip(){
	curl http://checkip.dyndns.com/ | sed "s@$TRIM_STR_BEGIN@@" | sed "s@$TRIM_STR_END@@"
}
torip(){
	TOR_IP=$(tor-resolve checkip.dyndns.com)
	echo "checkip.dyndns.com = $TOR_IP"
	torsocks curl $TOR_IP #| sed "s@$TRIM_STR_BEGIN@@" | sed "s@$TRIM_STR_END@@"
}
cleancache(){
	rm -rfv "$HOME/.cache" &
	rm -rfv "$HOME/.xombreronion/cookies.txt" &
	rm -rfv "$HOME/.xombreronion/sessions" &
	rm -rfv "$HOME/.xombreronion/tmp" &
        rm -rfv "$HOME/.xombreronion/cache" &
	history -c
}
profanity_with_tor(){
	TORSOCKS_CONF_FILE="/etc/tor/torsocks.profanity.conf"
	torsocks profanity
}
irrsi_with_tor(){
	TORSOCKS_CONF_FILE="/etc/tor/torsocks.irrsi.conf"
	torsocks irrsi
}
torsocks_altstream(){
	TORSOCKS_CONF_FILE="$HOME/.torsocks.conf"
	torsocks "$@"
}

alias tunset=unset_display

alias bleachbit="bleachbit  -co --preset"
alias su_bleachbit="sudo bleachbit -co --preset"
alias dialog="dialog --colors"
alias tor-arm="sudo -u debian-tor arm"
alias rm="srm -z"
alias torminal=torsocks_terminal
alias torminator=torminal

alias lynx=proxy_lynx
alias mutt="torsocks mutt"
alias finch=profanity_with_tor
alias profanity=profanity_with_tor
alias wget=wget_with_proxy
alias curl="curl_with_proxy"
alias youtube-dl=youtube_dl_with_proxy
alias ratox=start_ratox
alias mumble="torsocks mumble $@ &> /dev/null"
alias irssi=irssi_with_tor
alias sms=send_text
alias xombrero="start_xombrero"

alias hg="torsocks hg"
alias ssh="torsocks ssh"
alias git="torsocks git"

alias commit=git_add_and_commit
alias clone=git_clone_with_proxy
alias cpush=git_add_and_commit_and_push
alias push=git_push_with_proxy
alias pull=git_pull_with_proxy
alias gitpeer="gittorrent_clone"

alias chckcnky=check_conky
alias cnkystrt=conky_start
alias cnkystp=conky_stop
alias cnkyrstrt=conky_restart

alias aproj="cd $HOME/Projects/Distro_OS_Projects/AOSP/packages"
alias dproj="cd $HOME/Projects/Distro_OS_Projects/packages"
alias wproj="cd $HOME/Projects/Blogs_and_Infosites"
alias lproj="cd $HOME/Projects/Distro_OS_Projects/live"

alias aprojs="cd $HOME/Projects/Distro_OS_Projects/AOSP/packages && pcmanfm ./"
alias dprojs="cd $HOME/Projects/Distro_OS_Projects/packages && pcmanfm ./"
alias wprojs="cd $HOME/Projects/Blogs_and_Infosites && pcmanfm ./"
alias lprojs="cd $HOME/Projects/Distro_OS_Projects/live && pcmanfm ./"

alias aprojr="cd $HOME/Projects/Distro_OS_Projects/AOSP/packages && gedit ./README.md"
alias dprojr="cd $HOME/Projects/Distro_OS_Projects/packages && gedit ./README.md"
alias wprojr="cd $HOME/Projects/Blogs_and_Infosites && gedit ./README.md"
alias lprojr="cd $HOME/Projects/Distro_OS_Projects/live && gedit ./README.md"

alias proot="gedit $HOME/Projects/README.md"

alias find="find $@ 2> /dev/null"
alias dir="\ls --color=auto"

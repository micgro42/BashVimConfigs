#!/usr/bin/env bash
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'
alias ll='ls -lhaF'
alias lt='ls -lhatr'
alias l.='ls -d .*'
alias mkdir='mkdir -pv'
alias wget='wget -Nc'

alias grep='grep --color=auto'

alias xosview='xosview -xrm "xosview*cpuFormat: all" -xrm "xosview*netBandwidth: 786432"'
alias qtiplot='qtiplot -l=en'
alias gnucash="LANG=de_DE.utf8; LANGUAGE=de_DE.utf8; gnucash"

# see: https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions

# df - report file system disk space usage
alias df="df -Tha --total" # print total, show fs-type, 

# du - estimate file space usage
# alias du="du -ach | sort -h"
alias duh="du -d1 -h | sort -h"

# Display amount of free and used memory in the system
alias free="free -th" #human readable and totals


# ps - report a snapshot of the current processes
# search table for process, psg expects 1 argument
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# some things from http://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html and comments

## get top process eating memory
alias psmem='ps auxf | head -n 1 && ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | head -n 1 && ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | head -n 1 && ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | head -n 1 && ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

alias gitkira='GIT_SSH_COMMAND="ssh -p 36000" git'

# the following is supposed to color the shell based on the previous command. But it changes some more things, so I leave it deactivated until I understand it.
: '
bash_prompt_command()
{
    RTN=$?
    prevCmd=$(prevCmd $RTN)
}
PROMPT_COMMAND=bash_prompt_command
prevCmd()
{
    if [ $1 == 0 ] ; then
        echo $GREEN
    else
        echo $RED
    fi
}
if [ $(tput colors) -gt 0 ] ; then
    RED=$(tput setaf 1)
    GREEN=$(tput setaf 2)
    RST=$(tput op)
fi
export PS1="\[\e[36m\]\u.\h.\W\[\e[0m\]\[\$prevCmd\]>\[$RST\]"
'

#progress bar on file copy. Useful evenlocal.
alias cpProgress="rsync --progress -ravz"

# -a archive: recursive, etc
# -v be more verbose
# -z use compression
# -P progress bar and keeping partial files
# --append-verify do a checksum after finshing copying files
alias dircopy="rsync -avzP --append-verify"


alias watchtail='watch -n .5 tail -n 20'
alias watchdir='watch -n .5 ls -la'
alias watchsize='watch -n .5 du -h –max-depth=1'

#alias which='alias | which --tty-only --read-alias --show-dot --show-tilde'

# The following part is from http://www.splitbrain.org/blog/2008-02/27-keeping_your_home_directory_organized :
export TD="$HOME/temp/`date +'%Y-%m-%d'`"
td(){
    td=$TD
    if [ ! -z "$1" ]; then
        td="$HOME/temp/`date -d "$1 days" +'%Y-%m-%d'`";
    fi
    mkdir -p $td; cd $td
    unset td
}

# the next chunk of code is from http://notes.splitbrain.org/bashrc
# color in man pages http://icanhaz.com/colors
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


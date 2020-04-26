OS_NAME=`uname`
# Set  colors :
red='\e[0;31m'
RED='\e[1;31m'
green='\e[0;32m'
GREEN='\e[1;32m'
yellow='\e[0;33m'
YELLOW='\e[1;33m'
blue='\e[0;34m'
BLUE='\e[1;34m'
magenta='\e[0;35m'
MAGENTA='\e[1;35m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
white='\e[0;37m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color

# Set up custom PATH
PATH=$PATH:$HOME

# functions
logintxt()
{
   echo "OS: "`uname -s`
   echo "VER: "`uname -r`
   echo "HOST: "`uname -n`
}

loginprompt()
{
if [ "$TERM" != 'dumb' ] && [ -n "$BASH" ] && [ -n "$PS1" ]
then
       if [ `id | awk -F\( '{print $2}'|awk -F\) '{print $1}'` = "root" ]
       then
               export PS1='\[\033[01;31m\]\h \[\033[01;34m\]\W \$ \[\033[00m\]'
       else
    export PS1="\[\033[0;34m\][\$(date +%H:%M)]\033[0;32m\]\u @
\033[0;33m\]\h:\033[0;37m\]\W$ \[\033[37m\]"
       fi
fi
  }
 

loginalias()
{
#My Aliases
alias mkdir='mkdir -p'
alias which='type -all'

alias ..='cd ..'
alias la='ls -Al'               # show hidden files
alias lc='ls -lcr'              # sort by change time
alias lu='ls -lur'              # sort by access time
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lm='ls -al |more'         # pipe through 'more'
alias ld='ls -lp|grep ^d'       # List Directories Only
alias lf='ls -lp|grep -v ^d'    # List Files Only
alias lp='ls -lp'    # List with file type appended

alias rm='rm -i'    # Remove Interactive mode
alias hist='history | grep $1'  #Requires one input
alias ssh='ssh -X'    #SSH with X forwding enabled
alias hist='history | grep $1'  #Requires one input

set -o noclobber    # Do not over write files
}

# Begin case; Find OS type and apply settings

  case ${OS_NAME} in

    Linux) # linux - redhat
 
 # CUSTOM SETTINGS
   #  Linux only aliases
  alias ls='ls -hF --color'       # add colors for filetype recognition 
  alias lx='ls -lXB'              # sort by extension 
  alias lk='ls -lSr'              # sort by size
  alias iptables='sudo /sbin/iptables -L'    # Show IPTABLES rules
  alias vi='vim'

  ;;

    SunOS) # SunOS
 
 # CUSTOM SETTINGS   
  
 ;;
 
 FreeBSD) # FreeBSD
 
 # CUSTOM SETTINGS 
   alias vi='vim'
 ;;

    *)
     echo "$0 : unknown OS"
 
   ;;
esac

# Set up bash only settings
  if [ `echo $SHELL` == "/usr/local/bin/bash" -o "/bin/bash" ]; then
 shopt -s cdspell
 shopt -s extglob
 shopt -s dotglob
 shopt -s cmdhist
 shopt -s lithist
 shopt -s progcomp
 shopt -s checkhash
 shopt -s histreedit
 shopt -s promptvars
 shopt -s cdable_vars
 shopt -s checkwinsize
 shopt -s hostcomplete
 shopt -s expand_aliases
 shopt -s interactive_comments
 
 bind 'set show-all-if-ambiguous on'             # Tab once for complete
 bind 'set visible-stats on'                     # Show file info in complete
 
#Larger Bash History
HISTSIZE=10000
HISTFILESIZE=10000

     else
       echo "BASH not installed"
 fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi

# Set VI as default editor
export EDITOR=vi

# Print OS details to tty
 logintxt
# set a fancy prompt
 loginprompt
# System Aliases
 loginalias
 
# END of Script



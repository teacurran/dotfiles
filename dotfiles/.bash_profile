#!/bin/sh

# PATHS
PATH=/usr/local/bin:$PATH			# Homebrew

# MAVEN
M2_HOME=/java/apache-maven-3.2.1
PATH=$M2_HOME/bin:$PATH
export M2_HOME

# ANT
ANT_HOME=/java/apache-ant-1.9.4
PATH=$ANT_HOME/bin:$PATH
export ANT_HOME

JAVA_VERSION=jdk1.7.0_55.jdk
#JAVA_VERSION=jdk1.7.0_71.jdk
#JAVA_VERSION=jdk1.8.0_31.jdk
#JAVA_VERSION=jdk1.8.0_25.jdk
#JAVA_VERSION=jdk1.8.0_40.jdk

# JAVA
#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home
#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home
#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home

JAVA_HOME=/Library/Java/JavaVirtualMachines/$JAVA_VERSION/Contents/Home

export JAVA_HOME

PATH=$JAVA_HOME/bin:$PATH

# MySQL
PATH=/usr/local/mysql/bin:$PATH

export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

export MYSQL_HOME=/usr/local/mysql

# colorize the terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Bash Command Aliases
alias ls='ls -GFh'							# Colorize ls
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop


alias mysql_start='sudo $MYSQL_HOME/bin/mysqld_safe &'
alias mysql_stop='sudo $MYSQL_HOME/bin/mysqladmin shutdown -u root -proot'

alias postgres_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias postgres_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias mongodb_start='mongod --config /usr/local/etc/mongod.conf'
alias mongo_start='mongod --config /usr/local/etc/mongod.conf'

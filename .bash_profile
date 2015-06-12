#!/bin/sh

# colorize the terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'


PATH=/usr/local/bin:$PATH

# MAVEN
M2_HOME=/java/apache-maven-3.2.1
PATH=$M2_HOME/bin:$PATH
export M2_HOME

# ANT
ANT_HOME=/java/apache-ant-1.9.4
PATH=$ANT_HOME/bin:$PATH
export ANT_HOME

JAVA_VERSION=jdk1.7.0_55.jdk
#JAVA_VERSION=jdk1.8.0_31.jdk
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
alias mysql_start='sudo $MYSQL_HOME/bin/mysqld_safe &'
alias mysql_stop='sudo $MYSQL_HOME/bin/mysqladmin shutdown -u root -proot'

alias postgres_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias postgres_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias mongodb_start='mongod --config /usr/local/etc/mongod.conf'
alias mongo_start='mongod --config /usr/local/etc/mongod.conf'

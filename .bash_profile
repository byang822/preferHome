# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'

# Do not record the commands which start with space in bash history
export HISTCONTROL=ignorespace

# The proxy settings
export http_proxy=http://web-proxy.sgp.hp.com:8080
export https_proxy=http://web-proxy.sgp.hp.com:8080

# Display char setting
export LANG="en_US.utf-8"

# SM configure need ORACLE_HOME to connect to oracle DB
#export ORACLE_HOME=/usr/lib/oracle/11.2/client
#export SM=/opt/HP/SM
#PATH=$PATH:$SM/RUN

# JAVA setting
#export JAVA_HOME=/usr/local/jdk1.7.0_25
#export JRE_HOME=/usr/local/jre1.7.0_25
# Prepend JAVA_HOME/bin to override open jdk
#PATH=JAVA_HOME/bin:$PATH

# Tomcat base setting, for multi-instance
# Do not set CATALINA_PID here, it should be defined in $CATALINA_BASE/bin/setenv.sh
export CATALINA_BASE=~/tomcat

# Nodejs setting
PATH=$PATH:/usr/local/node-v4.2.3/bin

export PATH

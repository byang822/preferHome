# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Do not record the commands which start with space in bash history
export HISTCONTROL=ignorespace

# The proxy settings
export http_proxy=http://web-proxy.sgp.hp.com:8080
export https_proxy=http://web-proxy.sgp.hp.com:8080
export no_proxy="*.hp.com, *.hpe.com, *.hpeswlab.net"

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

# Set environment variables if user's agent already exists
[ -z "$SSH_AUTH_SOCK" ] && SSH_AUTH_SOCK=$(ls -l /tmp/ssh-*/agent.* 2> /dev/null | grep $(whoami) | awk '{print $9}')
if [ -z "$SSH_AGENT_PID" -a $((`echo $SSH_AUTH_SOCK | cut -d. -f2`)) -gt 0 ]; then
  SSH_AGENT_PID=$((`echo $SSH_AUTH_SOCK | cut -d. -f2` + 1))
fi
[ -n "$SSH_AUTH_SOCK" ] && export SSH_AUTH_SOCK
[ -n "$SSH_AGENT_PID" ] && export SSH_AGENT_PID
# Start agent if necessary
if [ -z $SSH_AGENT_PID ] ; then  # if no agent
  eval `ssh-agent -s` > /dev/null
	# You may need to generate ssh key by `ssh-keygen -t rsa -b 4096 -C "mail@host.domain"`
	# and add it to ssh-agent by `ssh-add ~/.ssh/id_rsa`
fi

export PATH

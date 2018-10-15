# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

export JAVA_HOME=/usr/local/jdk1.8.0_171
PATH=$PATH:$HOME/.local/bin:$HOME/bin:$JAVA_HOME/bin

export PATH

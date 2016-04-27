# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

export http_proxy="http://192.168.1.96:8080/"
export https_proxy="http://192.168.1.96:8080/"
export no_proxy="localhost,127.0.0.1"

source ${HOME}/Code/zgen/zgen.zsh

if ! zgen saved; then
	echo "Creating a zgen save"

	zgen oh-my-zsh

	zgen oh-my-zsh plugins/battery
	zgen oh-my-zsh plugins/common-aliases
	zgen oh-my-zsh plugins/chruby
	zgen oh-my-zsh plugins/docker
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/git-extras
	zgen oh-my-zsh plugins/go
	zgen oh-my-zsh plugins/mercurial
	zgen oh-my-zsh plugins/npm
	zgen oh-my-zsh plugins/nvm
	zgen oh-my-zsh plugins/virtualenvwrapper
	zgen oh-my-zsh plugins/pyenv
	zgen oh-my-zsh plugins/python
	zgen oh-my-zsh plugins/vagrant

	zgen load rimraf/k

	zgen load zsh-users/zsh-completions src
        zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-history-substring-search
       
	# zgen oh-my-zsh themes/arrow
	zgen load nojhan/liquidprompt
	zgen save
fi

export TERM='xterm-256color'

export PYTHONSTARTUP=${HOME}/.pythonrc.py

export GOPATH=${HOME}/.go
export GOROOT=${HOME}/opt/go

export JAVA_HOME=/usr/lib/jvm/java-8-oracle

export PATH=${HOME}/.cabal/bin:${PATH}
export PATH=${HOME}/.local/bin:${PATH}
export PATH=${GOROOT}/bin:${GOPATH}/bin:${PATH}
export PATH=${HOME}/opt/maven/bin:${PATH}

# dotnet
# [ -s "/home/filip/.dnx/dnvm/dnvm.sh" ] && . "/home/filip/.dnx/dnvm/dnvm.sh" # Load dnvm

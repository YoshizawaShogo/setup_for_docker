all: install update
install: 
	# bashの入力補完
	apt install bash-completion -y

update:
	# bashの入力補完
	echo "source /etc/bash_completion" >> ${HOME}/.bashrc
	# bashの文字に色付け
	echo "PS1='\\e[01;32m\\u@\\h\\e[00m:\\e[01;34m\w\\e[00m\\$$ '" >> ${HOME}/.bashrc

.PHONEY: all install update
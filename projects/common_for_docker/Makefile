all:
	# タイムゾーンを日本時間に設定する
	# tzdataをインストールする前に、/etc/timezoneにタイムゾーンを記述する必要がある
	export DEBIAN_FRONTEND=noninteractive && \
	echo Asia/Tokyo > /etc/timezone && \
	apt install -y tzdata

	# 日本語を使用できるようにする
	apt install -y locales && \
	locale-gen ja_JP.UTF-8 && \
	echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

	# bashの入力補完
	apt install bash-completion -y && \
	echo "source /etc/bash_completion" >> ${HOME}/.bashrc

	# bashの文字に色付け
	echo "PS1='\\e[01;32m\\u@\\h\\e[00m:\\e[01;34m\w\\e[00m\\$ '" >> ${HOME}/.bashrc

	# 最小化を解除
	yes | unminimize

.PHONEY: all
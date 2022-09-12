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

	# 最小化を解除
	yes | unminimize

.PHONEY: all
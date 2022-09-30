# Ubuntuでは環境構築方法が分からなかった
# fedoraで実行することを想定
# VScodeを使用してdockerコンテナにリモートすることを想定
all: install update

install: 
	dnf update -y

	# pdf出力のためのchromeとライブラリをインストール
	dnf install -y libXScrnSaver chromium
	# 日本語に対応
	dnf install -y ibus-kkc sazanami-gothic-fonts sazanami-mincho-fonts ipa-gothic-fonts ipa-mincho-fonts vlgothic-fonts vlgothic-p-fonts
	#TODO: VScode拡張機能を自動インストール

.PHONEY: all install update
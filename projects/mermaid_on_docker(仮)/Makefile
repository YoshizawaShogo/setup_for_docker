# Ubuntuでは環境構築方法が分からなかった
# fedoraで実行することを想定
# VScodeを使用してdockerコンテナにリモートすることを想定
all: install update

install: 
	dnf update -y
	dnf install libXScrnSaver chromium -y
	#TODO: VScode拡張機能を自動インストール

.PHONEY: all install update
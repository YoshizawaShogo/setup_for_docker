all: install update
install: 
	apt install -y fish lm-sensors curl

update:
	chsh -s /usr/bin/fish
	rm -rf $(HOME)/.config/fish/*
	mkdir -p $(HOME)/.config/fish
	cp -r ./configs/* $(HOME)/.config/fish/

	# bashで書かれたsourceファイル実行に対応するために必要
	curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
	fisher install edc/bass
	
import:
	rm -rf ./config/*
	cp -r $(HOME)/.config/fish/* ./configs 

.PHONEY: all install update
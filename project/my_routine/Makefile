all: install update

SHELL=/bin/bash

install: 
	apt install -y fish lm-sensors curl python3 python3-pip build-essential git && \
	curl "https://sh.rustup.rs" | sh -s -- -y && \
	[ -e ~/.config/fish/config.fish ] && echo "echo '\nset -U fish_user_paths $$fish_user_paths $$HOME/.cargo/bin' >> ~/.config/fish/config.fish" | sh && \
	cargo install bat exa

update:
	chsh -s /usr/bin/fish
	rm -rf $(HOME)/.config/fish/*
	mkdir -p $(HOME)/.config/fish
	cp -r ./configs/* $(HOME)/.config/fish/
	
import:
	rm -rf ./config/*
	cp -r $(HOME)/.config/fish/* ./configs 

.PHONEY: all install update
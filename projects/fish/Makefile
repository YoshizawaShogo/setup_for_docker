all: install update
install: 
	apt install -y fish lm-sensors
	chsh -s /usr/bin/fish

update:
	rm -rf $(HOME)/.config/fish/*
	mkdir -p $(HOME)/.config/fish
	cp -r ./configs/* $(HOME)/.config/fish/

.PHONEY: all install update
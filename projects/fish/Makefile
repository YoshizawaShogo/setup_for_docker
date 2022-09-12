all: install update
install: 
	apt install -y fish lm-sensors
	chsh -s /usr/bin/fish

update:
	mkdir -p $(HOME)/.config
	rm -rf $(HOME)/.config/fish/*
	cp -r ./configs/* $(HOME)/.config/fish/

.PHONEY: all install update
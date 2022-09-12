all: install
install: 
	apt install -y curl python3 python3-pip build-essential git
	curl "https://sh.rustup.rs" | sh -s -- -y && \
	[ -z ~/.config/fish/config.fish ] && echo 'set -U fish_user_paths $$fish_user_paths $$HOME/.cargo/bin' >> ~/.config/fish/config.fish
.PHONEY: all install
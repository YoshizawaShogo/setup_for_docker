all: install update

WORKDIR := "${HOME}/atcoder_rust"

install: 
	apt install -y libssl-dev pkg-config

update:
	cargo install cargo-atcoder
	cargo atcoder login
	mkdir -p ${WORKDIR}
	cp ./configs/cargo-atcoder.toml ~/.config/cargo-atcoder.toml
	cp -r ./configs/.cargo ${WORKDIR}

.PHONEY: all install update
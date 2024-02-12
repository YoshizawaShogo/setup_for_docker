default:
	@echo 'Please specify target.'

apt-update:
	apt update

japan-time-zone:
	echo Asia/Tokyo > /etc/timezone
	export DEBIAN_FRONTEND=noninteractive && \
	apt install -y tzdata

japanese-language:
	export DEBIAN_FRONTEND=noninteractive && \
	apt install -y locales
	locale-gen ja_JP.UTF-8
	echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

git-init-interactive:
	git config --global core.editor 'code --wait'
	@echo "Gitにユーザー名を設定してください"
	@read git_user_name  && git config --global user.name "$$git_user_name"
	@echo "Gitにメールアドレスを設定してください"
	@read git_user_email && git config --global user.email "$$git_user_email"

unminimize-docker:
	yes | unminimize

# Ubuntuでは環境構築方法が分からなかった
# fedoraで実行することを想定
# VScodeを使用してdockerコンテナにリモートすることを想定
mermaid-on-fedora:
	# pdf出力のためのchromeとライブラリをインストール
	dnf install -y chromium libXScrnSaver
	# 日本語に対応
	dnf install -y ibus-kkc sazanami-gothic-fonts sazanami-mincho-fonts ipa-gothic-fonts ipa-mincho-fonts vlgothic-fonts vlgothic-p-fonts

rust-atcoder-interactive: install-rust
	apt install -y libssl-dev pkg-config build-essential
	cargo install cargo-atcoder
	cp ./src/atcoder_rust/cargo-atcoder.toml ~/.config/cargo-atcoder.toml
	mkdir -p ${HOME}/atcoder_rust/
	cp -r ./src/atcoder_rust/.cargo ${HOME}/atcoder_rust/
	cp ./src/atcoder_rust/rust-toolchain ${HOME}/atcoder_rust/
	cargo atcoder login

bash-customize: japanese-language
	apt install -y bash-completion
	cat src/additional_bashrc.txt >> ${HOME}/.bashrc

fish:
	apt install -y fish python3 python3-pip curl
	chsh -s /usr/bin/fish
	fish src/init.fish

install-rust:
	apt install -y curl
	curl "https://sh.rustup.rs" | sh -s -- -y

all: apt-update japan-time-zone japanese-language unminimize-docker bash-customize install-rust fish

interactive: git-init-interactive rust-atcoder-interactive


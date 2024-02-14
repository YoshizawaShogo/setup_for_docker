# 概要
* dockerコンテナ上のUbuntuにおける環境構築方法のメモ
* 日本語のみに対応

# 使い方
``` bash
    # ubuntu:20.04 or ubuntu:22.04 on Docker.
    apt update
    apt install -y git make
    cd $HOME
    git clone https://github.com/YoshizawaShogo/setup_for_docker.git --depth 1
    cd setup_for_docker
    make all
```
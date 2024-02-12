#! /usr/bin/fish

set -U fish_greeting ''
set -Ux LANG ja_JP.UTF-8
set -Ux MAKEFLAGS '-j8'

curl -L -o install.fish https://get.oh-my.fish
fish install.fish --noninteractive
rm install.fish

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/fzf jethrokuan/z
apt install -y fzf

abbr -a -U -- .. 'cd ..'
abbr -a -U -- ... 'cd ../..'
abbr -a -U -- p prevd

abbr -a -U -- c 'cargo'
abbr -a -U -- cc 'cargo check'
abbr -a -U -- cf 'cargo fmt'
abbr -a -U -- cr 'cargo run'
abbr -a -U -- crr 'cargo run --release'
abbr -a -U -- ct 'cargo test'
abbr -a -U -- ctr 'cargo test --release'

abbr -a -U -- g git
abbr -a -U -- ga 'git add'
abbr -a -U -- gaa 'git add -A'
abbr -a -U -- gb 'git branch'
abbr -a -U -- gc 'git commit'
abbr -a -U -- gca 'git commit --amend'
abbr -a -U -- gh 'git checkout'
abbr -a -U -- gd 'git diff'
abbr -a -U -- gf 'git fetch'
abbr -a -U -- gg 'git grep'
abbr -a -U -- gl 'git log --oneline'
abbr -a -U -- gll 'git log --oneline -n5'
abbr -a -U -- glg git\ log\ --graph\ --date=short\ --decorate=short\ --pretty=format:\'\%Cgreen\%h\ \%Creset\%cd\ \%Cblue\%cn\ \%Cred\%d\ \%Creset\%s\'
abbr -a -U -- glv 'git log'
abbr -a -U -- gls 'git ls-files'
abbr -a -U -- gm 'git merge'
abbr -a -U -- gr 'git remote -v'
abbr -a -U -- groot 'cd (git rev-parse --show-toplevel)'
abbr -a -U -- gs 'git status -s'
abbr -a -U -- gsh 'git show'
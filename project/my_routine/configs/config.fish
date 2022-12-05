export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8

if status --is-interactive
  set -g -x fish_greeting ''
  date
  sensors
  uptime
  free -h
  alias ls exa
  alias cat bat
end
set -U fish_user_paths  /root/.cargo/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /root/mambaforge/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8

if status --is-interactive
  set -g -x fish_greeting ''
  date
  sensors
  uptime
  free -h
end
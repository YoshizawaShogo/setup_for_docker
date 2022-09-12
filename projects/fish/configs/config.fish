set -g -x fish_greeting ''

if status --is-interactive
  date
  
  sensors
  uptime
  free -h
end
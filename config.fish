# Remove fish default greeting
set fish_greeting ""

# apt aliases
alias update "sudo apt update && sudo apt upgrade"
alias install "sudo apt install"
alias purge "sudo apt purge"
alias clean "sudo apt autoclean"
alias remove "sudo apt autoremove"
alias uninstall "sudo apt remove"
alias search "sudo apt search"

# File Management aliases.
alias rmf "rm -rf"
alias grep "grep --color auto"
alias cp "cp -iv"
alias mv "mv -iv"
alias rm "rm -vI"
alias mkdir "mkdir -pv"
alias diff "diff --color auto"

# System/File Traversing aliases.
alias .. "cd .."
alias c1 "cd .."
alias c2 "cd ../.."
alias c3 "cd ../../.."
alias c4 "cd ../../../.."
alias ls "ls -hN --color"
alias ll "ls -lh"
alias lsa "ls -a"

# Terminal aliases.
alias c "clear"
alias root "sudo -i"
alias su "sudo -i"
alias x "exit"
alias refresh "exec $SHELL -l"

# System Tools aliases.
alias ping "ping -c 5"
alias ipe "curl ipinfo.io/ip"
alias cpuinfo "lscpu"
alias meminfo "free -m -l -t"

# Python aliases.
alias python "python3"
alias py "python3"

starship init fish | source

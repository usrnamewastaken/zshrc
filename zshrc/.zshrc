
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.


# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory


#name color
autoload -U colors && colors
PS1="%B%{$fg[white]%}[%{$fg[white]%}%n%{$fg[white]%}@%{$fg[blue]%}%M %{$fg[white]%}%~%{$fg[white]%}]%{$reset_color%}$%b "

#ls filetype highlighting 
alias ls='ls --color=auto'

#fix “#” in every line
unsetopt PROMPT_SP_

#auto run programs 
neofetch

#theos alias 
alias theos='sudo $THEOS/bin/nic.pl'
alias mpi='sudo make package install'
alias mp='sudo make package'

#Repo stuff
alias repo='cd /var/mobile/usrnamewastaken.github.io/repo'
alias add='git add .'
alias push='git push'
alias clone='git clone'
alias commit='git commit -m “commit”'
alias package='rm /var/mobile/usrnamewastaken.github.io/repo/Packages.gz && rm /var/mobile/usrnamewastaken.github.io/repo/Packages.bz2 && gzip -k /var/mobile/usrnamewastaken.github.io/repo/Packages && bzip2 -k /var/mobile/usrnamewastaken.github.io/repo/Packages'
alias depiction='cd /var/mobile/Sileo-Native-Depiction-Generator && python3 ./generator.py'
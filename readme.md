# dotfiles


# ~/../usr/etc/bash.bashrc

```sh
# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
#
case $- in
  *i*)
    echo "-[NON-LOGIN SHELLS]-";;
  *)
    return;;
esac

shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
magenta="\033[1;35m"
green="\033[1;32m"
white="\033[1;37m"
blue="\033[1;34m"
red="\033[1;31m"
black="\033[1;40;30m"
yellow="\033[1;33m"
cyan="\033[1;36m"
reset="\033[0m"
bgyellow="\033[1;43;33m"
bgwhite="\033[1;47;37m"
c0=${reset}
c1=${magenta}
c2=${green}
c3=${white}
c4=${blue}
c5=${red}
c6=${yellow}
c7=${cyan}
c8=${black}
c9=${bgyellow}
c10=${bgwhite}


export PS1="${c1}━━━${c2}━━━${c3}━━━${c4}━━━${c5}━━━${c6}━━━${c7
}━━━ "

      function realtime_date() {  echo "test"; }

function galat() {
  echo -e "\t × Module unable to load:
\t   ╭─[entry #1:1:1]
\t 1 │ source "$1"
\t   · ──┬──
\t   ·   ╰── file was not found
\t   ╰────
\t  help: No such file or directory (os error 2)" | lolcat
}

realtime_date_galat() { echo "not working without login"; }




# Handles nonexistent commands.
# If user has entered command which inivokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-n
ot-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/c
ommand-not-found "$1"
        }
fi

[ -r /data/data/com.termux/files/usr/share/bash-completion/bash_
completion ] && . /data/data/com.termux/files/usr/share/bash-com
pletion/bash_completion
alias games='cd && cd Termux-Games && bash games.sh'
```

# ~/../usr/etc/profile

```sh
case $- in
  *i*)

    function realtime_date() {
                    local args="$@"
                    echo -e "[$(date | awk '{print $4}' | cut -c
 1,2,4,5,7,8)] $args"
                  }
      ;;
    *)
      return;;
  esac


realtime_date "Load from.. (profile)"

for i in /data/data/com.termux/files/usr/etc/profile.d/*.sh; do

        if [ -r $i ]; then
        realtime_date "Load from.. (profile.d)"
                . $i
        fi
done
unset i

# Source etc/bash.bashrc and ~/.bashrc also for interactive bash
 login shells:



if [ "$BASH" ]; then
   if [[ "$-" == *"i"* ]]; then
  echo "*[LOGIN SHELLS]*"
if [ -r /data/data/com.termux/files/usr/etc/bash.bashrc ]; then
      realtime_date "Load from.. (bash-bashrc)"
      . /data/data/com.termux/files/usr/etc/bash.bashrc
fi
if [ -r /data/data/com.termux/files/home/.bashrc ]; then
      realtime_date "Load from.. (.bashrc)"
      . /data/data/com.termux/files/home/.bashrc
fi
    fi
```
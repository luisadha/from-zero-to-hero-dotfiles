# .bash_profile -*- mode: sh -*-

case $- in
  *i*)
    echo "*[LOGIN SHELLS]*"; BASH_ARGV="-$0";
    ;;
  *)
    return;;
esac


# Load login settings and environment variables
if [[ -f ~/.profile ]]; then
  source ~/.profile
fi


# Load interactive settings



youCanCallMe() { echo -e "Bagaimana aku memanggilmu?"; read shortname; export shortname; }

[[ -d ~/@/@t.me ]] && youCanCallMe;

shopt -s extdebug

# Display the function’s name, line number and fully qualified source file




bar() {
function foo.bar()
{
 echo -e "${FUNCNAME[0]}: bar"
};foo.bar
}

declare -F bar

# Turn off extended shell debugging
shopt -u extdebug

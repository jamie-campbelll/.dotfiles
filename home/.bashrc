export DISPLAY=:0
export TERM=xterm-256color
export PATH="$HOME/bin:$PATH"
export TEMP=/tmp

eval `dircolors ~/.dir_colors`

source ~/.dotfiles/alias.sh

urldecode() { : "${*//+/ }"; echo -e "${_//%/\\x}"; }

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

platform=$(uname -s)
if [[ $platform = CYGWIN* ]] || [[ $platform = MINGW* ]] ; then
    alias fzf='winpty fzf'
fi

PATH="/home/jon/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jon/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jon/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jon/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jon/perl5"; export PERL_MM_OPT;

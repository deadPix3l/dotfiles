alias ls="ls --color=auto"
alias la="ls -a"
alias ll="ls -lisah --group-directories-first"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias nel="egrep -v '^$|^#'"

alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'

alias mv="mv -i"
alias cp="cp -i"
alias sudo="sudo "

inst () { curl https://overthewire.org/wargames/$1/$1$2.html 2>/dev/null | nokogiri -e 'puts $_.css("p").each {|i| puts i.text}'; }
otw() { p=$1; g=$2; x=$3; shift 3; ssh $g$x@$g.labs.overthewire.org -p $p $*; }

scanbook() {
    front=$1;
    back=$2;
    cover=$3;
    shift 3;
    echo -ne "front: $front\nback: $back\ncover: $cover\n\nfinal name: ";
    read bookname;
    pdftk A=$front B=$back C=$cover shuffle C A Bend-1 output ${bookname// /_}.pdf;
    mv $front $back $cover .backup/;
}


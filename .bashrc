for i in aliases ps1 vars; do
if [ -f $HOME/.bash_$i ]; then source $HOME/.bash_$i; fi; done

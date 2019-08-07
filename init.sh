#!/usr/bin/env bash

SBCL=`which sbcl`
CURL=`which curl`
GIT=`which git`

ShellName=`echo "${SHELL}" | awk -F '/' '{print $NF}'`

System=`uname`

echo "It seems that you are using ${System} and ${ShellName}"

ask_to_confirm(){
    while true; do
	      echo "$1 [Y/N]?"
	      read  yn
	      case $yn in
	          [Yy]* ) return 0;;
	          [Nn]* ) return 1;;
	          * ) echo "Please answer Y or N.";;
	      esac
    done
}


is_app_exsist () {
    if [ ! -x "$1" ]; then
				return 1
    fi
    return 0
}

delete_files () {
    for item in "$@"; do
        if [[ -L "$HOME/${item}"  ||  -f "$HOME/${item}"  ]]; then
		        echo "Delete link or file ${item}"
						rm "$HOME/${item}"	
        else
            echo "Delete directory ${item}"
	  				rm -rf "$HOME/${item}"
				fi
    done
}



emacs_conf_files=".emacs.d"
if ask_to_confirm "Configure Emacs"; then
#    echo "Delete and link conf files for Emacs"
#    delete_files $emacs_conf_files
    if [[ -d "$HOME/.emacs.d" && -d "$HOME/.emacs.d/.git" ]]; then
	      echo "update doom emacs"
	      cd $HOME/.emacs.d && git pull
    else
	    echo "install doom emacs"
      echo "Delete .emacs.d"
      delete_files $emacs_conf_files
	    cd $HOME && git clone https://github.com/hlissner/doom-emacs .emacs.d
    fi
    cd $HOME && ln -s $HOME/.dotfiles/emacs/doom.d $HOME/.doom.d
fi


tmux_conf_files=".tmux.conf"
if ask_to_confirm "Configure Tmux"; then
    delete_files $tmux_conf_files
    ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
fi

if ask_to_confirm "Setup quicklisp for sbcl"; then
    if is_app_exsist $SBCL is_app_exsist $CURL; then
        conf_delete $quicklisp_conf_files
        if [ -d "$HOME/.dotfiles/quicklisp" ]; then
            rm -rf "$HOME/.dotfiles/quicklisp/"
        fi
        if [ -x "$HOME/.dotfiles/quicklisp.lisp" ]; then
            rm "$HOME/.dotfiles/quicklisp.lisp"
        fi
        curl -O "http://beta.quicklisp.org/quicklisp.lisp"
        sbcl --load ~/.dotfiles/sbcl/init.lisp
        mv ~/quicklisp ~/.dotfiles/
        ln -s .dotfiles/quicklisp ../quicklisp
        ln -s .dotfiles/sbcl/sbclrc ../.sbclrc
        rm ~/.dotfiles/quicklisp.lisp
    else
        echo "I can't find ${CURL} or ${SBCL}"
    fi
fi

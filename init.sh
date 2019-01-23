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



emacs_conf_files=".emacs.d .spacemacs.d"
if ask_to_confirm "Configure Emacs"; then
    echo "Delete and link conf files for Emacs"
    delete_files $emacs_conf_files
    if [ -d "$HOME/.dotfiles/emacs/emacs.d/" ]; then
	      echo "update spacemacs"
	      cd $HOME/.dotfiles/emacs/emacs.d && git pull
    else
	      echo "install spacemacs"
	      cd $HOME/.dotfiles/emacs/ && git clone https://github.com/syl20bnr/spacemacs emacs.d
    fi
    cd $HOME/.dotfiles
    ln -s $HOME/.dotfiles/emacs/emacs.d $HOME/.emacs.d
    ln -s $HOME/.dotfiles/emacs/spacemacs.d $HOME/.spacemacs.d
fi


tmux_conf_files=".tmux.conf"
if ask_to_confirm "Configure Tmux"; then
    delete_files $tmux_conf_files
    ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
fi


i3_conf_files=".config/i3"
if ask_to_confirm "Setup i3 tilling wm"; then
   delete_files $i3_conf_files
   ln -s $HOME/.dotfiles/i3 $HOME/.config/i3
fi


#!/bin/sh
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export XMODIFIERS='@im=SCIM'
export XIM=SCIM
export XIM_PROGRAM=SCIM
export GTK_IM_MODULE=SCIM
export QT_IM_MODULE=SCIM

userresources=$HOME/.Xresources
xrdb -merge $userresources

scim -d
exec i3
killall scim


#!/bin/sh
# $OpenBSD: xinitrc.cpp,v 1.6 2011/03/19 15:40:02 matthieu Exp $
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export XMODIFIERS='@im=SCIM'
export XIM=scim
export XIM_PROGRAM=scim
export GTK_IM_MODULE=scim
export QT_IM_MODULE=scim
xset +dpms
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

# merge in defaults and keymaps

if [ -f "$userresources" ]; then
    xrdb "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# if we have private ssh key(s), start ssh-agent and add the key(s)
#id1=$HOME/.ssh/identity
#id2=$HOME/.ssh/id_dsa
#id3=$HOME/.ssh/id_rsa
#id4=$HOME/.ssh/id_ecdsa
#if [ -x /usr/bin/ssh-agent ] && [ -f $id1 -o -f $id2 -o -f $id3 -o -f $id4 ];
#then
#	eval `ssh-agent -s`
#	ssh-add < /dev/null
#fi

# start some nice programs
scim -d
#xclock -fg LightSteelBlue -bg Black -hl LightSeaGreen &
openbox-session
exec xscreensaver -nosplash &
exec fvwm2 -f $HOME/.fvwm/.fvwm2rc  -d $DISPLAY
#exec fvwm2  -d $DISPLAY
killall scim
killall xscreensaver
#killall urxvtd
#if [ "$SSH_AGENT_PID" ]; then
#	ssh-add -D < /dev/null
#	eval `ssh-agent -s -k`
#fi

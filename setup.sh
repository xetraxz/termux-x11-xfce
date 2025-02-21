#!/data/data/com.termux/files/usr/bin/bash
yes | pkg up
pkg in x11-repo -y
pkg in termux-x11-nightly pkg in xfce -y
pkg in virglrenderer-android -y
#
touch $HOME/start_x11.sh
chmod +x $HOME/start_x11.sh
#
echo "
virgl_test_server_android &
export DISPLAY=:0
termux-x11 :0 &
termux-x11 :0 -xstartup "dbus-launch --exit-with-session xfce4-session" &
" >> $HOME/start_x11.sh

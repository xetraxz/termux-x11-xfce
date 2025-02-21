yes | pkg up
pkg install x11-repo -y
pkg install termux-x11-nightly 
pkg in xfce4 -y
pkg install virglrenderer-android -y
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
clear
echo "Setup Completed"
echo "run ./start_x11.sh from home directory"

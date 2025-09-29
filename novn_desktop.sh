#!/bin/bash
#Update package 11st and install necessary packages apt update
sudo
sudo apt install xfce4 xfce4-goodies novic python3-websockify python3-numpy tight reserver hoop nano nefetch firefox-y

#Generate self-signed SSL certificate for novic
openssl req -x508 -nodes -newkey rsa:3072 -keyout /root/novnc.pen -out /root/novnc.pes -days 3850

Start VMC server as root
USER-root vncserver

KiLLe VMC server
vncarver -k111:1
#Backup the original VWC startup script
wv-/.vc/xstartup.vc/startup.bak
* Create a new VNC startup script cat <<E>//startup
!/bin/bash
krab SHOME/.Xresources
startxfce4 &
100

#Make the new startup script executable chmod +x-/.vnc/xstartup

#Start the VNC server again as root 
USER-root server
#Start the WebSocket proxy for noVNC websockify D web=/usr/share/novnc/
cert-/root/novnc.pem 6888 localhost:5991

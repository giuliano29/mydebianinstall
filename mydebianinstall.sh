#!/bin/bash
#==============#

# AMD Graphics
sudo apt install firmware-amd-graphics libgl1-mesa-dri libglx-mesa0\
	 mesa-vulkan-drivers xserver-xorg-video-all 

# AMD Graphics 32bits support
sudo dpkg --add-architecture i386 && sudo apt update
sudo apt install libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386

#INSTALL XFCE4 + PROGRAMS + THEMES
sudo apt install libxfce4ui-utils thunar\
     xfce4-appfinder xfce4-panel xfce4-session\
     xfce4-settings xfce4-terminal xfconf\
     xfdesktop4  xfwm4 xfce4-goodies\
     network-manager-gnome network-manager-openvpn-gnome\
     powerline xfce4-pulseaudio-plugin\
     firefox-esr  keepassxc gimp geany geany-plugins\
     atril ristretto  galculator parole htop  git powerline gufw flameshot\
     paper-icon-theme moka-icon-theme papirus-icon-theme\
     qt5ct adwaita-qt
     
# INSTALL STEAM
sudo apt install steam locales-all at-spi2-core pkexec

# Install Phoenix-Firestorm Viewer
sudo apt install libidn12:i386 libstdc++6:i386 gstreamer1.0-pulseaudio:i386 libuuid1:i386
sudo ln -s /usr/lib/i386-linux-gnu/libidn.so.12 /usr/lib/i386-linux-gnu/libidn.so.11
cd ~/ 
wget https://downloads.firestormviewer.org/linux/Phoenix-Firestorm-Releasex64-6-6-14-69596.tar.xz
tar xvf Phoenix-Firestorm-Releasex64-6-6-14-69596.tar.xz && cd Phoenix-Firestorm-Releasex64-6-6-14-69596
./install.sh
cd ~/ && rm -rf Phoenix-Firestorm-Releasex64-6-6-14-69596/ Phoenix-Firestorm-Releasex64-6-6-14-69596.tar.xz

# INSTALL FLATPAK
sudo apt install flatpak 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# INSTALL GEANY THEMES
mkdir ~/.config/geany/colorschemes/
cd ~/.config/geany/colorschemes/
wget 	https://raw.github.com/geany/geany-themes/master/colorschemes/bespin.conf https://raw.github.com/geany/geany-themes/master/colorschemes/cyber-sugar.conf\
        https://raw.github.com/geany/geany-themes/master/colorschemes/darcula.conf https://raw.github.com/geany/geany-themes/master/colorschemes/dark.conf 


# INSTALL ICEWM     
#sudo apt install icewm lxappearance feh picom volumeicon-alsa

    
    
 

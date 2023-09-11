#!/bin/bash
#==============#
#BASE XFCE4
sudo apt install libxfce4ui-utils thunar\
     xfce4-appfinder xfce4-panel xfce4-session\
     xfce4-settings xfce4-terminal xfconf\
     xfdesktop4  xfwm4 xfce4-goodies

#PROGRAMAS PADRÃO
sudo apt install firefox firefox-l10n-pt-br keepassxc\
     atril ristretto gimp geany geany-plugins\
     galculator parole htop neofetch git powerline gufw

# INSTALL ICEWM     
sudo apt install icewm lxappearance feh picom volumeicon-alsa

# XFCE ALTERNATIVES THEMES
sudo apt install paper-icon-theme moka-icon-theme papirus-icon-theme     

# AMD Graphics
sudo apt install firmware-amd-graphics libgl1-mesa-dri libglx-mesa0\
	 mesa-vulkan-drivers xserver-xorg-video-all 

# AMD Graphics 32bits support
sudo dpkg --add-architecture i386 && sudo apt update
sudo apt install libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386

# Install Phoenix-Firestorm Viewer
cd ~/ 
wget https://downloads.firestormviewer.org/linux/Phoenix-Firestorm-Releasex64-6-6-14-69596.tar.xz
sudo apt install libidn12:i386 libstdc++6:i386 gstreamer1.0-pulseaudio:i386 libuuid1:i386
sudo ln -s /usr/lib/i386-linux-gnu/libidn.so.12 /usr/lib/i386-linux-gnu/libidn.so.11
tar xvf Phoenix-Firestorm-Releasex64-6-6-14-69596.tar.xz && cd Phoenix-Firestorm-Releasex64-6-6-14-69596
./install.sh
cd ~/ && rm -rf Phoenix-Firestorm-Releasex64-6-6-14-69596/ Phoenix-Firestorm-Releasex64-6-6-14-69596.tar.xz

# INSTALL FLATPAK
sudo apt install flatpak 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# INSTALL GEANY THEMES
cd ~/.config/geany/colorschemes/
wget 	https://raw.github.com/geany/geany-themes/master/colorschemes/bespin.conf https://raw.github.com/geany/geany-themes/master/colorschemes/cyber-sugar.conf\
        https://raw.github.com/geany/geany-themes/master/colorschemes/darcula.conf https://raw.github.com/geany/geany-themes/master/colorschemes/dark.conf 

# INSTALL QT THEME APPS
sudo apt install qt5ct adwaita-qt

    
    
 

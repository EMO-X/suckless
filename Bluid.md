### -1 you need right packages 
'''bash
sudo pacman -S xorg-server xorg-xinit
'''
### you need to create this folder 
'''bash
sudo mkdir -p /usr/share/xsessions
'''
### -2 you need to create a .desktop file for dwm for speed use this
```bash
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic window manager
Exec=/usr/local/bin/dwm
Icon=dwm
Type=XSession
```

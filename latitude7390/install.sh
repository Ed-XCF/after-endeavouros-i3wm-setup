cp 30-touchpad.conf /usr/share/X11/xorg.conf.d

yes | yay -S acpilight
gpasswd -a tofu video

yes | yay -S micro
yes | yay -S xclip

yes | yay -S ruby-fusuma
cp -r fusuma/ /home/tofu/.config
gpasswd -a tofu input
newgrp input

yes | yay -S fcitx5
yes | yay -S fcitx5-configtool
yes | yay -S fcitx5-gtk
yes | yay -S fcitx5-qt
yes | yay -S fcitx5-lua
yes | yay -S fcitx5-chinese-addons
echo "GTK_IM_MODULE=fcitx" >> /etc/environment
echo "QT_IM_MODULE=fcitx" >> /etc/environment
echo "XMODIFIERS=@im=fcitx" >> /etc/environment
echo "SDL_IM_MODULE=fcitx" >> /etc/environment
echo "GLFW_IM_MODULE=ibus" >> /etc/environment

yes | yay -S autotiling
cp -r i3/ /home/tofu/.config

yes | yay -S gnome-keyring
yes | yay -S microsoft-edge-stable
yes | yay -S visual-studio-code-bin
yes | yay -S jdk21-openjdk

yes | yay -S docker
gpasswd -a tofu docker
systemctl enable docker.service
systemctl start docker.service
chmod a+rw /var/run/docker.sock
docker run -itd --name redis -p 6379:6379 redis
docker run -itd --name mysql8 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 mysql:8.0
yes | yay -S docker-compose

yes | yay -S acpilight
yes | yay -S btop

yes | yay -S micro
yes | yay -S xclip

yes | yay -S ruby-fusuma

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

yes | yay -S gnome-keyring
yes | yay -S microsoft-edge-stable
yes | yay -S visual-studio-code-bin
yes | yay -S jdk21-openjdk

yes | yay -S docker
yes | yay -S docker-compose

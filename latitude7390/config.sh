set -e

cp 30-touchpad.conf /usr/share/X11/xorg.conf.d
cp -r fusuma/ /home/tofu/.config
cp -r i3/ /home/tofu/.config

# cp runs as root; restore user ownership for the copied user configs
chown -R tofu:tofu /home/tofu/.config/fusuma /home/tofu/.config/i3

# HiDPI scaling for the ~166 DPI 1920x1080 panel (125%)
touch /home/tofu/.Xresources
sed -i '/^[[:space:]]*Xft\.dpi:/d' /home/tofu/.Xresources
echo "Xft.dpi: 120" >> /home/tofu/.Xresources
chown tofu:tofu /home/tofu/.Xresources

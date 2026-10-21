set -e

cp 30-touchpad.conf /usr/share/X11/xorg.conf.d
cp -r fusuma/ /home/tofu/.config
cp -r i3/ /home/tofu/.config
cp -r fontconfig/ /home/tofu/.config

# cp runs as root; restore user ownership for the copied user configs
chown -R tofu:tofu /home/tofu/.config/fusuma /home/tofu/.config/i3 /home/tofu/.config/fontconfig

# Display/rendering resources for the ~166 DPI panel at 125%
touch /home/tofu/.Xresources
set_xresource() {
    local key="$1" value="$2"
    local escaped="${key//./\\.}"
    sed -i "/^[[:space:]]*${escaped}:/d" /home/tofu/.Xresources
    printf '%s: %s\n' "$key" "$value" >> /home/tofu/.Xresources
}

set_xresource Xft.dpi 120
set_xresource Xft.antialias true
set_xresource Xft.hinting true
set_xresource Xft.hintstyle hintslight
set_xresource Xft.rgba none
chown tofu:tofu /home/tofu/.Xresources

set -e

set_env_var() {
    local key="$1" value="$2"
    if grep -qE "^[[:space:]]*${key}=" /etc/environment; then
        sudo sed -i -E "s|^[[:space:]]*${key}=.*|${key}=${value}|" /etc/environment
    else
        printf '%s=%s\n' "$key" "$value" | sudo tee -a /etc/environment >/dev/null
    fi
}

yes | yay -S acpilight
yes | yay -S xorg-xbacklight
yes | yay -S btop

yes | yay -S micro
yes | yay -S xclip
yes | yay -S noto-fonts-cjk

yes | yay -S ruby-fusuma
yes | yay -S libinput-tools

yes | yay -S fcitx5
yes | yay -S fcitx5-configtool
yes | yay -S fcitx5-gtk
yes | yay -S fcitx5-qt
yes | yay -S fcitx5-lua
yes | yay -S fcitx5-chinese-addons
set_env_var GTK_IM_MODULE fcitx
set_env_var QT_IM_MODULE fcitx
set_env_var XMODIFIERS @im=fcitx
set_env_var SDL_IM_MODULE fcitx
set_env_var GLFW_IM_MODULE ibus

yes | yay -S autotiling

yes | yay -S gnome-keyring
yes | yay -S microsoft-edge-stable
yes | yay -S visual-studio-code-bin
yes | yay -S jdk21-openjdk

yes | yay -S docker
yes | yay -S docker-compose

yes | yay -S npm
yes | yay -S claude-code

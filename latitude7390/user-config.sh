set -e

if [ -z "${DISPLAY:-}" ]; then
    echo "user-config.sh: no DISPLAY; run this inside the i3 session." >&2
    exit 1
fi

set_xfconf() {
    local prop="$1" type="$2" value="$3"
    if xfconf-query -c xfce4-terminal -p "$prop" >/dev/null 2>&1; then
        xfconf-query -c xfce4-terminal -p "$prop" -s "$value"
    else
        xfconf-query -c xfce4-terminal -p "$prop" -n -t "$type" -s "$value"
    fi
}

# Use a monospace font with Simplified Chinese glyphs
set_xfconf /font-use-system bool false
set_xfconf /font-name string 'Noto Sans Mono CJK SC 11'

# Apply Xft settings to the current session as well
xrdb -merge "$HOME/.Xresources"

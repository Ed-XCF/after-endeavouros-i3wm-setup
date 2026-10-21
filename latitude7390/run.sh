set -e

cd -- "$(dirname -- "$0")"

bash install.sh
sudo bash permission.sh
sudo bash config.sh
bash user-config.sh

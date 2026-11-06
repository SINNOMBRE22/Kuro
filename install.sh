#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"
SUDO=""; [ "$(id -u)" -ne 0 ] && SUDO="sudo"

echo "Instalando dependencias..."
$SUDO apt-get update -qq
$SUDO apt-get install -y -qq libcurl4 ffmpeg ca-certificates curl >/dev/null

echo "Instalando yt-dlp..."
case "$(uname -m)" in
  x86_64) YB="yt-dlp_linux" ;; aarch64|arm64) YB="yt-dlp_linux_aarch64" ;; *) YB="yt-dlp" ;;
esac
$SUDO curl -fsSL "https://github.com/yt-dlp/yt-dlp/releases/latest/download/${YB}" -o /usr/local/bin/yt-dlp
$SUDO chmod a+rx /usr/local/bin/yt-dlp
chmod +x "$DIR/bin/kuro"

if [ ! -f config.json ]; then
  cp config.example.json config.json
  read -rp "Token de @BotFather: " T
  read -rp "Tu ID de Telegram: " O
  [ -n "$T" ] && sed -i "s|TU_TOKEN_AQUI|$T|" config.json
  [[ "$O" =~ ^[0-9]+$ ]] && sed -i "s|\[123456789\]|[$O]|" config.json
fi
mkdir -p data tmp assets

$SUDO tee /etc/systemd/system/kuro.service >/dev/null <<SERVICE
[Unit]
Description=Kuro Bot
After=network-online.target
Wants=network-online.target
[Service]
Type=simple
WorkingDirectory=$DIR
ExecStart=$DIR/bin/kuro
Restart=always
RestartSec=3
User=$(id -un)
Environment=PATH=/usr/local/bin:/usr/bin:/bin
[Install]
WantedBy=multi-user.target
SERVICE
$SUDO systemctl daemon-reload
$SUDO systemctl enable --now kuro
sleep 2
systemctl is-active --quiet kuro && echo "Kuro en línea 🐈‍⬛" || echo "Revisa: journalctl -u kuro -n 30"

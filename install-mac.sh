#!/bin/bash
# Instalador do Mypheed para macOS — uso:
#   curl -fsSL https://mypheed.myph.com.br/install-mac.sh | bash
# Baixa a versão mais recente para ~/Mypheed (rodar de novo atualiza),
# instala as dependências e cria o app "Mypheed" no Launchpad.
set -euo pipefail

DEST="$HOME/Mypheed"
URL="https://mypheed.myph.com.br/downloads/Mypheed-macOS.tar.gz"

echo ""
echo "  Mypheed — instalador para macOS"
echo ""

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "  - baixando o pacote..."
curl -fsSL "$URL" -o "$TMP/mypheed.tar.gz"

echo "  - extraindo para $DEST ..."
mkdir -p "$DEST"
tar -xzf "$TMP/mypheed.tar.gz" -C "$DEST" --strip-components=1

cd "$DEST"
exec /bin/bash "$DEST/Instalar-Mypheed.command"

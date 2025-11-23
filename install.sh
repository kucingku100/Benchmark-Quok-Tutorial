#!/bin/bash
set -e

echo "🔧 Setting up Quok repository..."

sudo install -d -m 0755 /etc/apt/keyrings
curl -fsSL https://repo.quok.it/quok.asc | gpg --dearmor | sudo tee /etc/apt/keyrings/quok.gpg >/dev/null
echo "deb [signed-by=/etc/apt/keyrings/quok.gpg] https://repo.quok.it cross main" | sudo tee /etc/apt/sources.list.d/quok.list >/dev/null

sudo apt-get update
sudo apt install quok -y

echo "🎉 Quok installed!"
echo "Next: run 'quok init' and enter your API key."

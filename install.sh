#!/bin/bash

echo "🛠 Installing yt-tools..."

# Move scripts into home directory
cp ytsample ~/ytsample
cp ytmov ~/ytmov

# Make them executable
chmod +x ~/ytsample ~/ytmov

# Add aliases to .bashrc if not already present
if ! grep -q "alias ytsample=" ~/.bashrc; then
  echo "alias ytsample='~/ytsample'" >> ~/.bashrc
fi

if ! grep -q "alias ytmov=" ~/.bashrc; then
  echo "alias ytmov='~/ytmov'" >> ~/.bashrc
fi

# Reload shell config
source ~/.bashrc

echo "✅ yt-tools installed! You can now use: ytsample and ytmov"

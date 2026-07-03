#!/bin/bash
set -e

echo ">>> Update & upgrade system"
sudo apt-get update -y
sudo apt-get upgrade -y

echo ">>> Install basic tools"
sudo apt-get install -y \
  curl wget git unzip htop net-tools \
  build-essential software-properties-common \
  openssh-server

echo ">>> Enable SSH service"
sudo service ssh start || true

echo ">>> Setup selesai. Codespace siap digunakan sebagai VPS Ubuntu LTS."

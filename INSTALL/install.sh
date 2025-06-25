#!/bin/bash

# Установим пакеты через pacman
if [ -f "installed_packages.txt" ]; then
    echo "Устанавливаем пакеты из pacman..."
    sudo pacman -S --noconfirm --needed - < installed_packages.txt
else
    echo "Файл с пакетами pacman не найден."
fi

# Установим пакеты из AUR через yay
if [ -f "aur_packages.txt" ]; then
    echo "Устанавливаем пакеты AUR через yay..."
    yay -S --noconfirm --needed - < aur_packages.txt
else
    echo "Файл с пакетами AUR не найден."
fi

# Установим пакеты Python через pip
if [ -f "installed_pip_packages.txt" ]; then
    echo "Устанавливаем пакеты Python через pip..."
    pip install -r installed_pip_packages.txt
else
    echo "Файл с пакетами pip не найден."
fi

# Установим пакеты Python 3 через pip3
if [ -f "installed_pip3_packages.txt" ]; then
    echo "Устанавливаем пакеты Python 3 через pip3..."
    pip3 install -r installed_pip3_packages.txt
else
    echo "Файл с пакетами pip3 не найден."
fi

echo "Установка пакетов завершена."


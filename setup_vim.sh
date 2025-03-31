#!/bin/bash

# URL к вашему .vimrc в Gist
VIMRC_URL="https://gist.githubusercontent.com/your-username/gist-id/raw/.vimrc"

# Скачиваем .vimrc
curl -fsSL "$VIMRC_URL" -o ~/.vimrc

# Устанавливаем Vim, если не установлен
if ! command -v vim &> /dev/null; then
    echo "Vim не установлен. Устанавливаю..."
    sudo apt update && sudo apt install -y vim
fi

# Установка vim-plug, если ещё не установлен
if [ ! -f ~/.vim/autoload/plug.vim ]; then
    echo "Устанавливаю vim-plug..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Устанавливаем плагины, если они есть
vim +PlugInstall +qall

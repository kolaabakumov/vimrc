#!/bin/bash

# Путь к твоему локальному .vimrc
LOCAL_VIMRC="$HOME/.vimrc_config_for_sync"

# Копируем .vimrc на удалённую машину
cat "$LOCAL_VIMRC" > ~/.vimrc

# Проверим, установлен ли Vim
if ! command -v vim &> /dev/null; then
    echo "Vim не установлен. Устанавливаю..."
    sudo apt update && sudo apt install -y vim
fi

# Проверим, установлен ли vim-plug (если хочешь плагины)
if [ ! -f ~/.vim/autoload/plug.vim ]; then
    echo "Устанавливаю vim-plug..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Установка плагинов (если они прописаны в .vimrc)
vim +PlugInstall +qall

#!/bin/bash

# URL к вашему .vimrc в Gist
VIMRC_URL="https://raw.githubusercontent.com/kolaabakumov/vimrc/main/.vimrc"

# Скачиваем .vimrc
curl -fsSL "$VIMRC_URL" -o ~/.vimrc

" Включить подсветку синтаксиса
syntax on

" Включить автоматическое определение типа файла и соответствующие настройки
filetype plugin indent on

" Общие настройки отображения
set number              " Показывать номера строк
set relativenumber      " Относительная нумерация (по желанию)
set cursorline          " Подсвечивать текущую строку
set wrap                " Переносить длинные строки
set linebreak           " Не разрывать слова при переносе

" Отступы и табы
set expandtab           " Заменять табы пробелами
set shiftwidth=4        " Ширина отступа = 4 пробела
set tabstop=4           " Таб = 4 пробела
set softtabstop=4       " Отступ при нажатии Tab = 4 пробела
set autoindent          " Автоотступ при переходе на новую строку
set smartindent         " Умный автоотступ

" Поиск
set ignorecase          " Игнорировать регистр при поиске
set smartcase           " Но учитывать, если есть заглавные буквы
set incsearch           " Интерактивный поиск (показывает совпадения по мере ввода)
set hlsearch            " Подсвечивать найденное

" Кодировка
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r

" Цветовая схема (по желанию)
colorscheme desert

" Поддержка форматирования JSON, XML, YAML
augroup config_formats
    autocmd!
    autocmd FileType json setlocal foldmethod=syntax
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType xml setlocal foldmethod=syntax
augroup END

" Поддержка плагинов (если используешь менеджер, например vim-plug)
" Пример с vim-plug:
" call plug#begin('~/.vim/plugged')
" Plug 'elzr/vim-json'
" Plug 'stephpy/vim-yaml'
" Plug 'othree/xml.vim'
" call plug#end()

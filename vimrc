filetype plugin indent on       " load file type plugins + indentation

call pathogen#infect()          " adds all plugins on ~/.vim/bundle to runtimepath
call pathogen#helptags()        " runs :helptags on every /doc dir on runtimepath

set nocompatible                " choose no comptibility with legacy vi
set modelines=0

set tabstop=4                   " size of a tab in spaces
set softtabstop=4               " the size of tabs when using insert mode
set shiftwidth=4                " whenever using >> or << use this ammount of spaces
set expandtab                   " replace tabs with the ammount of spaces defined in softtabstop

set encoding=utf-8
set showcmd                     " display incomplete commands
set number                      " display line numbers
set wildmenu
set cursorline
set ruler                       " display line and character number on the bottom right of the window
set backspace=indent,eol,start  " backspace through everything in insert mode
set laststatus=2                " display status lines on all windows
set undofile

let mapleader = ","             " set the <leader> key. Used to call user's defined commands

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set gdefault                    " applies substitutions globally on lines
" allows search clearing through <leader> + space
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

syntax enable

set wrap                      " wrap lines
set textwidth=79              " lines will wrap after 79 characters
set formatoptions=qnr1        " allows formating of comments with gq, detects numbered lists, automatically inserts the current comment char after pressing <Enter> and doesn't break lines after 1 char words
set colorcolumn=85            " and a colored character is shown on the 85th position

"" Visual
colorscheme hemisu

set list
set listchars=tab:▸\ ,eol:¬

" Forcing VIM learning
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap ; :

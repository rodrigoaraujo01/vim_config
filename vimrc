filetype plugin indent on       " load file type plugins + indentation

call pathogen#infect()          " adds all plugins on ~/.vim/bundle to runtimepath
call pathogen#helptags()        " runs :helptags on every /doc dir on runtimepath

set nocompatible                " choose no comptibility with legacy vi
set modelines=0

set tabstop=4                   " size of a tab in spaces
set softtabstop=4               " the size of tabs when using insert mode
set shiftwidth=4                " whenever using >> or << use this ammount of spaces
set expandtab                   " replace tabs with the ammount of spaces defined in softtabstop

"Code Folding
set foldmethod=indent           " groups of lines with the same indent form a fold
set foldlevel=99                " depths of folding to be displayed

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

"Searching
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
"Visual
colorscheme sublimetext2
set list
set listchars=tab:▸\ ,eol:¬ ,trail:·  " modifying the display of tabs and leading spaces
set guioptions-=T             " remove gui buttons
set guifont=Ubuntu\ Mono:h13
set guioptions=aAce           " remove white scrollbar

"Window Management
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Plugins
map <leader>td <Plug>TaskList

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

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

let python_highlight_all = 1


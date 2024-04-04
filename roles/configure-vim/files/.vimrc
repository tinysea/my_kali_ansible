" Disable compatibility with vi which can cause unexpected issues.
set nocompatible              " required

"paste & copy from clipboard in vim 
set clipboard=unnamedplus,autoselect

"set line numbers
set nu

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on                  " required

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on


" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

silent au BufNewFile,BufRead *.py, *.php, *.c, *.java
     set tabstop=4
     set softtabstop=4
     set shiftwidth=4
     set textwidth=79
     set expandtab
     set autoindent
     set fileformat=unix

silent au BufNewFile,BufRead *.js, *.html, *.css
     set tabstop=2
     set softtabstop=2
     set shiftwidth=2

highlight BadWhitespace ctermbg=red guibg=red

silent au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

silent au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

silent autocmd BufNewFile,BufRead *.nasm set filetype=nasm

set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"let g:syntastic_asm_checkers = ['nasm']

let python_highlight_all=1
syntax on



"call togglebg#map("<F5>")

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"Enable closing 
" Automatically closing braces
"inoremap {<CR> {<CR>}<C-o>O
"inoremap (  ()<ESC>hli
"inoremap [ []<ESC>ha
"inoremap " ""<ESC>ha
"inoremap ' ''<ESC>ha


set whichwrap+=<,>,[,]]
set textwidth=0 wrapmargin=0

command! -range=% Hardcopy2pdf <line1>,<line2> hardcopy > %.ps | !ps2pdf %.ps && rm %.ps && echo 'Created: %.pdf'''

set background=dark
colorscheme gruvbox
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
colorscheme gruvbox

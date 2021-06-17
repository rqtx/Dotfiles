
" file:           visual.vim                                                         
" purpose:        Vim sidual configurations                                                         
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          


"""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme nord

" Define standard filetype
set ffs=unix,dos,mac

" Enable 256 colors in vim
set t_Co=256
" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen
if &term =~ '256color'
  set t_ut=
endif


"""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation and text
"""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
" UTF-8 encoding and en_US as default encoding/language
set encoding=utf8

" Show linenumbers
set number

" Enable syntax highlighting
syntax on
" Enable filetype specific indentation
filetype indent plugin on

" Show ruler
set ruler

" Use smart tabs
set smarttab

" Show the command typing
set showcmd

" Always show status line.
set laststatus=2

" Height of the command bar
set cmdheight=1

" Use spaces, no tabs
set expandtab 

" show matching braces and set color
set showmatch
hi MatchParen ctermbg=blue  guibg=lightblue

" Highlight current active line
set cursorline

" 1 tab == 2 spaces
set shiftwidth=2
set softtabstop=2

set ai " Auto indent
set si " Smart indent

" modern backspace behavior
set backspace=indent,eol,start



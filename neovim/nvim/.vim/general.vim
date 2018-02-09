" file:           general.vim                                                         
" purpose:        Vim general configurations                                                         
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          


let mapleader = "'\'"

" Use the OS clipboard by default
set clipboard=unnamed

set updatetime=250

" Automatically update a file if it is changed externally
set autoread

" Enhance command-line completion
set wildmenu

set hlsearch	    " highlight search matches
set incsearch	    " search while characters are entered

" search is case-insensitive by default
set ignorecase

" Line wrap (number of cols)
set wrap	    " wrap lines only visually
set linebreak	    " wrap only at valid characters
set textwidth=0	    " prevent vim from inserting linebreaks
set wrapmargin=0    "   in newly entered text

" Enable mouse in all modes
set mouse=a
" Hide the mouse cursor while typing
set mousehide

set exrc
set secure

" Backups, Swap Files
set nobackup
set nowb
set noswapfile
set nowritebackup

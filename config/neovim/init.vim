""""""""""""""""" Plugins """"""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""""" Common """""
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'

" Tab completion
Plugin 'ervandew/supertab'

Plugin 'joequery/Stupid-EasyMotion'

Plugin 'tmhedberg/SimpylFold'

Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'

""""" Common coding plugins """""
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'

""""" Python coding plugins """""
Plugin 'python-mode/python-mode'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" Put your non-Plugin stuff after this line

""""""" Common vim setup""""""
syntax enable
set number
set nocompatible              " be iMproved, required
set hidden
filetype off                  " required
set cursorline		      "underline the current line
set nobackup
set nowritebackup
let mapleader = " "

" use Ctrl+L to toggle the line number counting method
function! g:ToggleNuMode()
  if &nu == 1
     set rnu
     set nonu
  else
     set nu
     set nornu
  endif
endfunction
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.
"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR><Paste>

""""""" Vim-ctrlspace """""
"nnoremap <silent><C-Space> :CtrlSpace O<CR>

""""""" Vim-airline configuration """""
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#buffer_idx_mode = 1
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
  nmap - <Plug>AirlineSelectPrevTab
  nmap + <Plug>AirlineSelectNextTab

""""""" SuperTab configuration """""""
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
function! Completefunc(findstart, base)
    return "\<c-x>\<c-p>"
endfunction


""""""" NerdTree configuration """""
map <F5> :NERDTreeToggle<CR> 
"autocmd vimenter * NERDTree     "open a NERDTree automatically when vim starts up
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close vim if the only window left open is a NERDTree<Paste>


""""""" Vim-Syntastic configuration """""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""" General coding stuff """""""
" Let plugins show effects after 500ms, not 4s
set updatetime=500
" Disable mouse click to go to position
set mouse-=a

""""""" Python mode """" """
let g:pymode_rope = 0   "Disable Python mode autocomplete

""""""" Python stuff """""""
"set number showmatch
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set expandtab autoindent |
    \ let python_highlight_all = 1 |
    \ set encoding=utf-8 |

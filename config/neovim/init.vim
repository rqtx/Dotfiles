"""""" Common vim setup """"""
syntax enable
set background=dark
set number
set shiftwidth=2
set hidden
set cursorline		      "underline the current line
set nobackup
set nowritebackup
set t_Co=256
let mapleader = "/"

"Key map to save existing files
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <C-S> :Update<CR>
vnoremap <C-S> <C-C>:Update<CR>
inoremap <C-S> <C-O>:Update<CR>
nnoremap <C-D> :Update<CR>
inoremap <C-D> <Esc>:Update<CR>
vnoremap <C-D> <Esc>:Update<CR>

"Key map to find word
nnoremap <C-F> :/
inoremap <C-F> <Esc>:/
vnoremap <C-F> <Esc>:/

nnoremap <C-T> *
inoremap <C-T> <Esc>*
vnoremap <C-T> <Esc>*

"Find and Replace
nnoremap <C-R> :%s/\<\>//gc
inoremap <C-R> <Esc>:%s/\<\>//gc
vnoremap <C-R> <Esc>:%s/\<\>//gc


call plug#begin('~/.local/shared/nvim/plugged')
""""" Common """""
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'whatyouhide/vim-gotham'

""""" Common coding plugins """""
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'valloric/youcompleteme', { 'do': './install.py --clang-completer' }
Plug 'joequery/Stupid-EasyMotion'

call plug#end()

""""""" General Functions """"""
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

""""""" NerdTree configuration """""
map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

""""""" Vim Airline """""""
set laststatus=2
let g:airline_theme='gotham'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
  nmap <Tab> <Plug>AirlineSelectNextTab
  nmap <A-Tab> <Plug>AirlineSelectPrevTab

""""""" Syntastic """""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers      = ['cppcheck', 'gcc']
let g:syntastic_cpp_checkers    = ['cppcheck', 'gcc']
let g:syntastic_python_checkers = ['flake8', 'bandit']
let g:syntastic_cmake_checkers  = ['cmakelint']
let g:syntastic_asm_compiler    = ['mipsel-linux-gcc']
let g:syntastic_javascript_checkers = ['jsonlint']
let g:syntastic_markdown_checkers = ['textlint']

""""""" Tagbar """""""
nmap <F8> :TagbarToggle<CR>

""""""" Stupid-EasyMotion """""""
" Easymotion shortcut
nmap <C-W> <Esc><leader><leader>w
nmap <C-E> <Esc><leader><leader>W
nmap <C-Q> <Esc><leader><leader>f

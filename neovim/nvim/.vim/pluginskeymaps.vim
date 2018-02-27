
" file:           pluginskeymaps.vim                                                         
" purpose:        Key maps for vim plugins                                                         
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          


"""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree configuration
"""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Airline
"""""""""""""""""""""""""""""""""""""""""""""""""
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
  nmap <A-]> <Plug>AirlineSelectNextTab
  nmap <A-[> <Plug>AirlineSelectPrevTab
  imap <A-]> <Esc><Plug>AirlineSelectNextTab
  imap <A-[> <Esc><Plug>AirlineSelectPrevTab
  nmap <A-TAB> <Plug>AirlineSelectNextTab
  imap <A-TAB> <Esc><Plug>AirlineSelectNextTab

"""""""""""""""""""""""""""""""""""""""""""""""""
"Vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_key='<Leader>n'
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-b>'
let g:multi_cursor_skip_key='<C-g>'
let g:multi_cursor_quit_key='<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-O> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" Stupid-EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""
" Easymotion shortcut
imap <C-K> <C-o><leader><leader>w
nmap <C-K> <Esc><leader><leader>w
vmap <C-K> <Esc><leader><leader>w
imap <C-J> <C-o><leader><leader>W
nmap <C-J> <Esc><leader><leader>W
vmap <C-J> <Esc><leader><leader>W
imap <C-H> <C-o><leader><leader>f
nmap <C-H> <Esc><leader><leader>f
vmap <C-H> <Esc><leader><leader>f

"""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-gitgutter
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_max_signs = 1000

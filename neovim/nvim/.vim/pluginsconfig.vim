" file:           pluginsconfig.vim                                                         
" purpose:        Vim plugins configuration                                                      
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          


"""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree configuration
"""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-N> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Airline
"""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_theme='nord'
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
let g:typescript_indent_disable = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_asm_compiler    = ['mipsel-linux-gcc']
let g:syntastic_c_checkers      = ['cppcheck', 'gcc']
let g:syntastic_cpp_checkers    = ['cppcheck', 'gcc']
let g:syntastic_cmake_checkers  = ['cmakelint']
let g:syntastic_php_checkers = ['php']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_perl_checkers = ['perlcritic']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['eslint']
let g:syntastic_markdown_checkers = ['textlint']
let g:syntastic_sass_checkers = ['sass_lint']
let g:syntastic_yaml_checkers = ['yamllint']

"""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_log_level = 'error'
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_invoke_completion = '<C-/>'

nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-Y> :TagbarToggle<CR>

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

"""""""""""""""""""""""""""""""""""""""""""""""""
" SrcExpl (Source Explorer)
"""""""""""""""""""""""""""""""""""""""""""""""""
" // The switch of the Source Explorer 
nmap <F8> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_" 
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" // Set "<F3>" key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = "<F3>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F4>"

"""""""""""""""""""""""""""""""""""""""""""""""""
" vim-anyfold
"""""""""""""""""""""""""""""""""""""""""""""""""
let anyfold_activate=1
set foldlevel=1000 
hi Folded term=NONE cterm=NONE

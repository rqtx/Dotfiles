" Vim filetype plugin file
" Language:	C++
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 Jan 15

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Behaves just like C
runtime! ftplugin/c.vim ftplugin/c_*.vim ftplugin/c/*.vim

" Load Cpp ycm_global_ycm_extra_conf
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf_Cpp.py"

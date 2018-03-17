""""""""""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.config/nvim/.vim/general.vim"))
  source \~/.config/nvim/.vim/general.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
" Visual
"""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.config/nvim/.vim/visual.vim"))
  source \~/.config/nvim/.vim/visual.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.config/nvim/.vim/spelling.vim"))
  "To add more skeletons edit skeletons.vim file
  source \~/.config/nvim/.vim/spelling.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
" Skeletons
"""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.config/nvim/.vim/skeletons.vim"))
  "To add more skeletons edit skeletons.vim file
  source \~/.config/nvim/.vim/skeletons.vim
endif


"""""""""""""""""""""""""""""""""""""""""""""""""
" Key maps
"""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.config/nvim/.vim/keymaps.vim"))
  "To add more key maps edit keymaps.vim file
  source \~/.config/nvim/.vim/keymaps.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
"VimPlug
"""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.config/nvim/.vim/plugins.vim"))
  "To add more plugins edit plugins.vim file
  source \~/.config/nvim/.vim/plugins.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins key maps
"""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.config/nvim/.vim/pluginsconfig.vim"))
  source \~/.config/nvim/.vim/pluginsconfig.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
" Diff mode
"""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.config/nvim/.vim/vimdiff.vim"))
  "This file must come after all vim configurations because will override it them
  "if we are in diff mode
  source \~/.config/nvim/.vim/vimdiff.vim
endif


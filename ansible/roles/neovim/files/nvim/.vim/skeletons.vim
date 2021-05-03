" file:           skeletons.vim                                                         
" purpose:        Map skeletons files                                                         
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          


autocmd BufNewFile *.c r ~/.config/nvim/.vim/Skeletons/cpp.skeleton 
autocmd BufNewFile *.cpp r ~/.config/nvim/.vim/Skeletons/cpp.skeleton 
autocmd BufNewFile *.h r ~/.config/nvim/.vim/Skeletons/h.skeleton
autocmd BufNewFile *.hpp r ~/.config/nvim/.vim/Skeletons/h.skeleton
autocmd BufNewFile *.txt r ~/.config/nvim/.vim/Skeletons/txt.skeleton
autocmd BufNewFile *.vim r ~/.config/nvim/.vim/Skeletons/vim.skeleton

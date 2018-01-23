" file:           skeletons.vim                                                         
" purpose:        Map skeletons files                                                         
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          


autocmd BufNewFile *.c r ~/.config/nvim/Skeletons/cpp.skeleton 
autocmd BufNewFile *.cpp r ~/.config/nvim/Skeletons/cpp.skeleton 
autocmd BufNewFile *.h r ~/.config/nvim/Skeletons/h.skeleton
autocmd BufNewFile *.hpp r ~/.config/nvim/Skeletons/h.skeleton
autocmd BufNewFile *.txt r ~/.config/nvim/Skeletons/txt.skeleton
autocmd BufNewFile *.vim r ~/.config/nvim/Skeletons/vim.skeleton

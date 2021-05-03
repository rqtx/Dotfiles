
" file:           tmux.vim                                                          
" purpose:        Recognize .tmux.con file                                                          
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          

au BufNewFile,BufFilePre,BufRead *.tmux.conf set filetype=tmux


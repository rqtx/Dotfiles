
" file:           c.vim                                                         
" purpose:        Vim C comfigurantio                                                         
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          

" We want to keep comments within an 80 column limit, but not code.
" These two options give us that
setlocal formatoptions=crq
setlocal textwidth=80

" This makes doxygen comments work the same as regular comments
setlocal comments-=://
setlocal comments+=:///,://

" Indents are 2 spaces
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2

" And they really are spaces, *not* tabs
setlocal expandtab

let &path.="src/include

" Setup for indending
setlocal nosmartindent
setlocal autoindent

" Load up the doxygen syntax
let g:load_doxygen_syntax=1

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf_C.py"

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

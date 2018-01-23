
" file:           python.vim                                                         
" purpose:        Vim python config                                                         
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          

" Indents are 4 spaces
set tabstop=8
set softtabstop=4
set shiftwidth=4

" And they really are spaces, *not* tabs
set expandtab

let python_highlight_all=1

"Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

"Setup for indending
setlocal nosmartindent
setlocal autoindent

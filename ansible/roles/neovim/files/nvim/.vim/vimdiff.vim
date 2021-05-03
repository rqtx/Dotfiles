" file:           vimdiff.vim                                                         
" purpose:        Vimdiff configuration                                                       
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          


if &diff                             " only for diff mode/vimdiff
  "Vimdiff configuration must be inside the if because will override
  "configurations just if we are in diff mode
  
  set diffopt=filler,context:1000000 " filler is default and inserts empty lines for sync
  colorscheme gruvbox
let g:airline_theme='gruvbox'
endif

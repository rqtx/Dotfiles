
" file:           keymaps.vim                                                         
" purpose:        Vim key maps                                                         
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          


" Key map undo redo
nnoremap <C-z> :u<CR>
vnoremap <C-z> <Esc>:u<CR>
inoremap <C-z> <C-o>:u<CR>

" Key map copy nad paste
inoremap <C-v> <Esc>"+pa
vnoremap <C-c> "+y
vnoremap <C-x> "+d

"Key map jump to the matchparen 
noremap % v%

"Key map exit
nnoremap <C-e> :q<CR>
vnoremap <C-e> <Esc>:q<CR>
inoremap <C-e> <Esc>:q<CR>

"Key map to save existing files
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <C-S> :Update<CR>
vnoremap <C-S> <C-O>:Update<CR>
inoremap <C-S> <C-O>:Update<CR>
nnoremap <C-D> :Update<CR>
inoremap <C-D> <Esc>:Update<CR>
vnoremap <C-D> <Esc>:Update<CR>

"Key map to find word
nnoremap <C-F> :/
inoremap <C-F> <Esc>:/
vnoremap <C-F> <Esc>:/

nnoremap <C-T> *
inoremap <C-T> <Esc>*
vnoremap <C-T> <Esc>*

"Key map find and Replace
nnoremap <C-R> :%s/\<\>//gc
inoremap <C-R> <Esc>:%s/\<\>//gc
vnoremap <C-R> <Esc>:%s/\<\>//gc

" Quickly move current line above or below
nnoremap <C-Up><C-Up> :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap <C-Down><C-Down> :<c-u>execute 'move +'. v:count1<cr>

" Toggle between normal and insert mode
nnoremap <C-space> i
imap <C-space> <Esc>
nnoremap <Leader>a i
imap <Leader>a <Esc>

" use Ctrl+L to toggle the line number counting method
function! g:ToggleNuMode()
  if &nu == 1
     set rnu
     set nonu
  else
     set nu
     set nornu
  endif
endfunction
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

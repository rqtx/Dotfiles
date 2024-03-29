" file:           plugins.vim                                                         
" purpose:        Load vim plugings                                                         
" Maintained by:  Igor Fernandes Miranda <igormiranda5@gmail.com>          


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/shared/nvim/plugged')
""""" Common """""
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'whatyouhide/vim-gotham'
Plug 'arcticicestudio/nord-vim'
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'morhetz/gruvbox'
Plug 'vim-python/python-syntax'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'NoahTheDuke/vim-just'

""""" Common coding plugins """""
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'joequery/Stupid-EasyMotion'
Plug 'airblade/vim-gitgutter'
Plug 'pseewald/vim-anyfold'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

""""" Typescript """""
Plug 'leafgarland/typescript-vim'
call plug#end()

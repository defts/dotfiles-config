filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"
Bundle "jby/tmux.vim.git"
Bundle "xolox/vim-misc"
Bundle "altercation/vim-colors-solarized"
Bundle "xolox/vim-session"
Bundle "christoomey/vim-tmux-navigator"
Bundle 'scrooloose/syntastic.git'
Bundle 'itchyny/lightline.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'sheerun/vim-polyglot'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'


" remove
" Bundle "scrooloose/nerdtree.git"
" Bundle "ctrlpvim/ctrlp.vim"

"Filetype plugin indent on is required by vundle
filetype plugin indent on


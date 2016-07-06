filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"
Bundle "jby/tmux.vim.git"
Bundle "scrooloose/nerdtree.git"
Bundle "ctrlpvim/ctrlp.vim"
Bundle "xolox/vim-misc"
Bundle "xolox/vim-session"
Bundle "christoomey/vim-tmux-navigator"
Bundle 'scrooloose/syntastic.git'
Bundle 'itchyny/lightline.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'sheerun/vim-polyglot'

"Filetype plugin indent on is required by vundle
filetype plugin indent on


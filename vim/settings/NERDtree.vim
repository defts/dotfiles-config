" ==== NERD tree
" Open the project tree and expose current file in the nerdtree with Ctrl-\
nnoremap <silent> <C-\> :NERDTreeFind<CR>:vertical<CR>

" Alt-Shift-N for nerd tree
nmap <C-n> :NERDTreeToggle<CR>

hi! link NERDTreeFile Constant
hi! link NERDTreeDir Identifier

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30


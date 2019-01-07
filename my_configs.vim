let g:go_version_warning=0

set nu
set hlsearch
set so=2
set shiftwidth=2
set foldmethod=indent
set foldlevel=99
map <f2> :NERDTreeToggle<cr>
map <f3> :Tlist<cr>
map <space> G
map <BS> gg

"let mapleader = ","
"" Smart way to move between windows
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>te :$tabe 
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 
map <silent> <leader><cr> :noh<cr>
map <leader>q :q<cr>
noremap <silent><leader>1 :tabn 1<cr>
noremap <silent><leader>2 :tabn 2<cr>
noremap <silent><leader>3 :tabn 3<cr>
noremap <silent><leader>4 :tabn 4<cr>
noremap <silent><leader>5 :tabn 5<cr>
noremap <silent><leader>6 :tabn 6<cr>
noremap <silent><leader>7 :tabn 7<cr>
noremap <silent><leader>8 :tabn 8<cr>
noremap <silent><leader>9 :tabn 9<cr>
noremap <silent><leader>0 :tabn 10<cr>


"let g:loaded_syntastic_bemhtml_bemhtmllint_checker=0
"let g:loaded_syntastic_loclist=0
nmap <f2> :NERDTreeToggle<cr>
nmap <f3> :Tlist<cr>
nmap <f5> :e!<cr>G
nmap - <c-w>_
nmap = <c-w>=
nmap _ <c-w>-
nmap + <c-w>+
nmap \| <c-w>\|
nmap <leader>v :vs<cr>
nmap <leader>x :sp<cr>
nmap <leader>q :q<cr>
"nmap <leader>n :tabnew<cr>
nmap <leader>t :$tabe 
nmap <leader>tc :$tabclose 
nmap <leader>tm :tabm 
nmap <leader>p :CtrlP 
nmap <leader>cd :pwd<cr>
"nmap <leader>m :marks<cr>
vmap <leader>y :w !pbcopy<CR><CR>
"vmap <leader>y "+y 
vmap <leader>p :r !pbpaste<CR><CR>
"nmap <leader>p "+p
vmap <leader>d "+d
nmap <leader>P "+P
"vmap <leader>p "+p
"vmap <leader>P "+P
map <space> G
map <BS> gg
nmap <leader>a ggVG\
vnoremap <leader>y :w !pbcopy<CR><CR>\
nmap <leader>p :r !pbpaste<CR><CR>

let g:pyflakes_use_quickfix = 0
" 搜索相同单词而不跳转
let g:pymode_python = 'python3'
let g:pymode_lint_on_write = 0
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_motion = 1
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
map / <Plug>(incsearch-forward)


map <F6> :call RunRawdataBuild()<CR>
func! RunRawdataBuild()
  exec "w" 
  exec "!filename=`echo % |awk -F '/' '{print $NF}'`; /data/documents/kangrui-doc/gantt/rawbuild $filename"
endfunc

func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    exec "!time python %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'go'
    "exec "!go build %<"
    exec "!time go run %"
  elseif &filetype == 'mkd'
    exec "!~/.vim/markdown.pl % > %.html &"
    exec "!firefox %.html &"
  endif
endfunc

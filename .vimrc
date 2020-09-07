set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'chemzqm/wxapp.vim'
Plugin 'rking/ag.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'posva/vim-vue'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'klen/python-mode'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

"my config
set nu
set cursorline              " 突出显示当前行
set fdm=indent
set foldmethod=indent
set foldlevel=99
"set foldmethod=manual
"set cindent
"set autochdir
set fileformat=unix
set mouse=nv

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
nmap <leader>tm :tabm 
nmap <leader>p :CtrlP 
nmap <leader>cd :pwd<cr>
nmap <leader>m :marks<cr>
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

"set autochdir
colorscheme elflord 
"colorscheme solarized 
"colorscheme gruvbox  
"set background=black
syntax on
"自动补全
filetype plugin indent on
set completeopt=longest,menu
"自动补全命令时使用菜单式匹配列表
"与windows共享粘贴板
set clipboard+=unnamed

"au BufNewFile,BufRead *.vue set syntax=html
au BufNewFile,BufRead *.wxml set filetype=wxml
au BufNewFile,BufRead *.wxss set filetype=wxss
au BufNewFile,BufRead *.conf set filetype=apache
"au BufNewFile,BufRead *.vue setlocal filetype=vue.html.javascript.css

set wildmenu
"autocmd FileType vue syntax sync fromstart
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complet

"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white   
"hi CursorLine   cterm=NONE ctermbg=red ctermfg=black   
"hi CursorLine   cterm=NONE ctermbg=lightyellow ctermfg=black   
hi CursorLine   term=underline cterm=underline
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=red   
hi folded term=standout ctermbg=None
"hi javaType ctermfg=Blue
"
"
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

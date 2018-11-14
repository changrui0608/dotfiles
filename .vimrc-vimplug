" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


let NERDTreeShowHidden = 1
let NERDTreeIgnore = [
              \ '\.py[cd]$', '\~$', '\.swo$', '\.swp$', '\.DS_Store$',
              \ '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$',
              \ ]
let NERDTreeIndicatorMapCustom = {
            \ 'Modified'  : '✹',
            \ 'Staged'    : '✚',
            \ 'Untracked' : '✭',
            \ 'Renamed'   : '➜',
            \ 'Unmerged'  : '═',
            \ 'Deleted'   : '✖',
            \ 'Dirty'     : '✗',
            \ 'Clean'     : '✓',
            \ 'Unknown'   : '?'
            \ }


" have to do this to make YCM works on C-family lang...
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }


syntax on
set ignorecase
set showmatch
set showmode
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set expandtab
set autoindent
set ruler
set number
set hlsearch
" use system clipboard
set clipboard=unnamed
filetype on


set nocompatible


filetype indent plugin off
syntax off

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle itself
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'powerline/powerline-fonts'
Plugin 'tomasiser/vim-code-dark'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'Valloric/YouCompleteMe'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-projectionist'

call vundle#end()

" Powerline/Airline
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#branch#enabled=0
let g:airline_powerline_fonts=1

set laststatus=2

filetype indent plugin on
"set t_Co=256
set t_ut=
set ttyfast
set hidden

syntax on

" Tab stops
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Line indent markers
let g:indentLine_enabled=1
let g:indentLine_char = '¦'
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#ff0000'

" colorscheme stellarized_dark
let g:powerline_pycmd="py3"
"let g:codedark_conservative=1

" YCM Configs
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1

" NERD Tree
nnoremap <F4> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1

" Buffer switching keys
nmap <F6> :bp<CR>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

nmap <F7> :bn<CR>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" netrw.. old had troubles... maybe come back to it.
"nnoremap <F4> :Vexplore<CR>
"let g:netrw_browse_split=4
"let g:netrw_banner=0
"let g:netrw_liststyle=2
"let g:netrw_altv=1
"let g:netrw_winsize=20

" Colorscheme vars
let g:neodark#terminal_transparent = 1
colorscheme neodark

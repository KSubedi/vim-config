set nu
syntax on
colorscheme molokai
:set noet ci pi sts=0 sw=4 ts=4

:iabbrev </ </<C-X><C-O>

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
   	set nocompatible               " Be iMproved

   	" Required:
   	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'fatih/vim-go'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bling/vim-airline'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'godlygeek/tabular'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"Vim Airline
set laststatus=2
let g:bufferline_echo = 0
set noshowmode
set t_Co=256
set encoding=utf-8

:let g:airline_theme='dark'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ' '

let g:airline_enable_syntastic  = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0

let g:molokai_original = 1
let g:rehash256 = 1

"AutoComplete"

let g:neocomplcache_enable_at_startup = 1

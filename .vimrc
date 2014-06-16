syntax on
set number
set expandtab

set ts=4 sw=4
set autoindent
set cindent

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'vim-jp/cpp-vim'
NeoBundle 'vim-ruby/vim-ruby'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

autocmd FileType ruby set ts=2 sw=2

let g:neocomplcache_enable_at_startup = 1


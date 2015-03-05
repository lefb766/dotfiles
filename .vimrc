syntax on
set number
set expandtab

set ts=4 sw=4
set autoindent
set cindent

set mouse=n
set cursorline

set list
set lcs=eol:$,tab:>-,trail:~

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc.vim', {
            \ 'build' : {
            \     'windows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'linux' : 'make',
            \     'unix' : 'gmake',
            \    },
            \ }

NeoBundle 'Shougo/neocomplete'
NeoBundle 'vim-jp/cpp-vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'OmniSharp/omnisharp-vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

autocmd FileType ruby set ts=2 sw=2

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

let g:neocomplete#min_keyword_length = 3

inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()

"let g:syntastic_cs_checkers = ['code_checker']
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.cs = '.*[^=\);]'
filetype plugin on

let g:OmniSharp_host = "http://localhost:2000"
let g:OmniSharp_timeout = 1

set noshowmatch


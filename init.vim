set shell=/bin/bash

let g:deoplete#enable_at_startup = 0
autocmd InsertEnter * call deoplete#enable()


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'jwhitley/vim-colors-solarized'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-repeat'
Plug 'rstacruz/sparkup'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'https://github.com/gioele/vim-autoswap.git'
Plug 'Raimondi/delimitMate'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jelera/vim-javascript-syntax'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'Chiel92/vim-autoformat'
Plug 'Quramy/tsuquyomi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

"Programming languages - highlighting support
Plug 'leafgarland/typescript-vim'
Plug 'nsf/gocode'
Plug 'digitaltoad/vim-pug'
Plug 'moll/vim-node'
Plug 'tpope/vim-rails'
Plug 'rust-lang/rust.vim'

" Deoplete - code completion plugins
Plug 'mhartington/deoplete-typescript'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'w0rp/ale'

Plug 'jaawerth/nrun.vim'

" Initialize plugin system
call plug#end()

" Setup linting
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_javascript_eslint_use_global = 1
let g:ale_fix_on_save = 1

" Disable whitespace highlighting for Markdown files
let g:better_whitespace_filetypes_blacklist=['md']

" Autoclose preview window deoplete
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Setting for js (tern) in deoplete
" ===========================================================================
let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance (in scopes for variables, in prototypes for
" properties) between the completions and the origin position in the result
" data. Default: 0
let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
let g:deoplete#sources#ternjs#docs = 1

" When on, only completions that match the current word at the given point will
" be returned. Turn this off to get all results, so that you can filter on the
" client side. Default: 1
let g:deoplete#sources#ternjs#filter = 0

" Whether to use a case-insensitive compare between the current word and
" potential completions. Default 0
let g:deoplete#sources#ternjs#case_insensitive = 1

" When completing a property and no completions are found, Tern will use some
" heuristics to try and return some properties anyway. Set this to 0 to
" turn that off. Default: 1
let g:deoplete#sources#ternjs#guess = 0

" Determines whether the result set will be sorted. Default: 1
let g:deoplete#sources#ternjs#sort = 1

" When disabled, only the text before the given position is considered part of
" the word. When enabled (the default), the whole variable name that the cursor
" is on will be included. Default: 1
let g:deoplete#sources#ternjs#expand_word_forward = 0

" Whether to ignore the properties of Object.prototype unless they have been
" spelled out by at least two characters. Default: 1
let g:deoplete#sources#ternjs#omit_object_prototype = 0

" Whether to include JavaScript keywords when completing something that is not
" a property. Default: 0
let g:deoplete#sources#ternjs#include_keywords = 1

" If completions should be returned when inside a literal. Default: 1
let g:deoplete#sources#ternjs#in_literal = 0
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ 'javascript'
                \ ]

" Settings for

filetype plugin indent on    " Load each file's plugin and indent files

map Q gq

set splitbelow
set splitright

" Split navigations

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
let g:SimpylFold_docstring_preview=1

" General rules
set ignorecase
set backspace=indent,eol,start
set backup
set history=50
set ruler
set showcmd
set incsearch " See search results while typing
set hlsearch
set encoding=utf-8

let mapleader = " "

"General indentation
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

"PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"C++ indentation
au BufNewFile,BufRead *.cpp
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
"HTML/CSS Tabstops - 2
au BufNewFile,BufRead *.js,*.html,*.css,*.yml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent
"TS Tabstops - 4
au BufNewFile,BufRead *.ts
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent

" Colorscheme and syntax highlighting
syntax on
syntax enable
set background=dark
colorscheme solarized

let python_highlight_all=1

set number

" Make %% expand to the current buffer file path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Make buffers hidden to enable switching without saving
set hidden

" Map esc to remove search highlighting
nnoremap <esc> :noh<return><esc>

" CtrlP shortcuts
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" CtrlP excludes
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ }

" Autoformat quick button
noremap <F3> :Autoformat<CR>

let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#displayed_head_limit = 15
let g:airline#extensions#branch#format = 2
let g:airline#extensions#wordcount#enabled = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
let g:airline_skip_empty_sections = 1


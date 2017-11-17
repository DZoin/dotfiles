set ignorecase
set backspace=indent,eol,start
set autoindent
set backup
set history=50
set ruler
set showcmd
set incsearch " See search results while typing

let g:deoplete#enable_at_startup = 1

map Q gq
syntax on
set hlsearch
filetype plugin indent on
autocmd FileType text setlocal textwidth=78

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'rstacruz/sparkup'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'leafgarland/typescript-vim'
Plug 'https://github.com/gioele/vim-autoswap.git'
Plug 'Quramy/tsuquyomi'
Plug 'moll/vim-node'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/deoplete-typescript'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'nsf/gocode'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'myint/syntastic-extras'
Plug 'roktas/syntastic-more'
Plug 'tpope/vim-unimpaired'

" Initialize plugin system
call plug#end()

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic plugins
let g:syntastic_c_checkers = ['check']
let g:syntastic_cpp_checkers = ['check']
let g:syntastic_make_checkers = ['gnumake']
let g:syntastic_javascript_checkers = ['json_tool']
let g:syntastic_json_checkers = ['json_tool']
let g:syntastic_gitcommit_checkers = ['language_check']
let g:syntastic_svn_checkers = ['language_check']
let g:syntastic_python_checkers = ['pyflakes_with_warnings']
let g:syntastic_yaml_checkers = ['pyyaml']
let g:syntastic_typescript_checkers = ['tsc', 'tslint']
let g:syntastic_typescript_tsc_fname = ''
" let g:typescript_compiler_binary = '$(npm bin)/tsc' " Uncomment for local tsc
let g:syntastic_javascript_checkers=['eslint']

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction
let b:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))

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
let g:deoplete#sources#ternjs#sort = 0

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
                \ '...'
                \ ]

" Settings for 

filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

"General indentation
setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab

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
au BufNewFile,BufRead *.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
	\ set expandtab
"JS/TS Tabstops - 4
au BufNewFile,BufRead *.js,*.ts 
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent

"define BadWhitespace before using in a match

highlight BadWhitespace ctermbg=red guibg=darkred

"Flag unnecessary white space
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.ts,*.rb match BadWhitespace /\s\+$/

set encoding=utf-8

let python_highlight_all=1
syntax on
colorscheme delek

set number

" Make %% expand to the current buffer file path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'


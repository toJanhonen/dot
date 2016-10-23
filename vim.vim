scriptencoding utf-8

execute pathogen#infect()

"leader
let mapleader = "\<Space>"
"leader map
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>o :only<CR>
nnoremap <Leader>p :echo expand('%')<CR>

nnoremap <Leader>q :quit<CR>

"
nnoremap <silent> <Leader>h <Plug>(CommandTHelp)

"
if exists('&belloff')
    set belloff=all
endif

"
if has('linebreak')
    set linebreak
    let &showbreak='⇥ '

    set breakindent
endif

"
if has('folding')
    nnoremap <Tab> za

    set foldmethod=syntax
    set foldlevelstart=1
endif

set history=700

set autoread

set so=7
set ruler

set backspace=indent,eol

set cmdheight=3

set hid

set ignorecase
set smartcase

set hlsearch

set showmatch
set mat=5

set laststatus=2

set relativenumber
set number

set highlight+=N:DiffText

set cursorline

syntax enable

"let g:solarized_termtrans=1
let g:pad#dir='~/.note/'

set background=dark
colorscheme base16-ocean

set encoding=utf8

set nobackup
set nowritebackup

set noswapfile

set noundofile

set hidden

set list
set listchars=tab:⇥\ ,trail:∙,nbsp:␣,extends:>,precedes:<
set scrolloff=3

set expandtab
set tabstop=2

set ai
set si

"map
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"stuff
set guifont=Hack
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections=1

let g:airline_theme='base16_ocean'

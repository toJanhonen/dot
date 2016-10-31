scriptencoding utf-8

call plug#begin('~/.vim/plugged')

"essential
Plug 'wincent/command-t', { 'do': 'cd ruby/command-t && ruby extconf.rb && make' }
Plug 'wincent/loupe'
Plug 'wincent/scalpel'

Plug 'tpope/vim-projectionist'

"neat
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'

Plug 'editorconfig/editorconfig-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'leafgarland/typescript-vim'

Plug 'fmoralesc/vim-pad'

"not so neat
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()

"leader
let mapleader = "\<Space>"
"leader map
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>o :only<CR>
nnoremap <Leader>p :echo expand('%')<CR>

nnoremap <Leader>q :quit<CR>

"
nnoremap <silent> <Leader>h :CommandTHelp<CR>

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

"
autocmd FileType markdown setlocal spell

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
let g:pad#set_mappings=0

set background=dark
colorscheme base16-eighties

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

set wildignore=*/node_modules,*/bin,*/.git

"map
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <silent> - :NERDTreeToggle<CR>

"stuff
set guifont=Hack
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections=1

let g:airline_theme='base16_eighties'

let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1

let g:airline_section_error=''
let g:airline_section_warning=''

let g:ale_sign_error='!'
let g:ale_sign_warning='?'

let g:ale_echo_msg_error_str='!'
let g:ale_echo_msg_warning_str='?'

let g:ale_echo_msg_format='[%linter%] %s [%severity%]'

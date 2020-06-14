"*****************************************************************************
""" Vim-PLug core
"*****************************************************************************

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_editor = "nvim"				" nvim or vim

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" let g:fuzzy_opencmd = 'tabedit'

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Empty value to disable preview window altogether
" let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
" let g:fzf_preview_window = 'right:60%'

" let g:nerdtree_tabs_open_on_console_startup=1

call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cloudhead/neovim-fuzzy'
Plug 'luochen1990/rainbow'
Plug 'dart-lang/dart-vim-plugin'
call plug#end()

" Map NerdTree
map <C-b> :NERDTreeToggle<CR>

"*****************************************************************************
""" Basic Setup
"*****************************************************************************"
""" Encoding
set encoding=utf-8
set fileencoding=utf-8
" set fileencodings=utf-8

" Enable filetype plugins
filetype plugin on
filetype indent on

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
" set tabstop=4
" set softtabstop=0
" set shiftwidth=4
" set expandtab

set autoread
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers

set splitbelow
set splitright

set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <C-p>  :FuzzyOpen<CR>
nnoremap <C-h>  :bprev<CR>
nnoremap <C-l>  :bnext<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


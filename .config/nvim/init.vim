let mapleader =" "

syntax on

set number relativenumber
set wildmode=longest,list,full
set encoding=utf-8
set expandtab
set shiftwidth=4
set tabstop=8
set smartindent
set autoindent
set clipboard+=unnamedplus

filetype indent on
map <F6> :setlocal spell! spelllang=en<CR>
map <F10> :Goyo \| highlight Normal ctermbg=258<CR>
map <F5> :w! \| !compiler "<c-r>%"<CR>

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'morhetz/gruvbox'
Plug 'junegunn/goyo.vim'

let g:deoplete#enable_at_startup = 1
let g:UltiSnipsExpandTrigger="<tab>"

cal plug#end()

colorscheme gruvbox
highlight Normal ctermbg=258

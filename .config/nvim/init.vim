" runtime! config/plugins.vim
" runtime! config/settings.vim
" runtime! config/mappings.vim
set encoding=utf-8

" Colors
set background = "dark"
colorscheme dracula
set termguicolors

" Editor
set number
set relativenumber
set cmdheight=2
set noshowmode
set signcolumn=yes
set tabstop=4 shiftwidth=4
set expandtab smarttab autoindent
set nobackup nowritebackup
set hidden
set shortmess+=c

" GUI Settings
if has("gui_running")
    set guifont=FiraCode\ Nerd]\ Font\ 11
endif

call plug#begin(stdpath('data') . '/plugged')
	
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'ripxorip/bolt.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

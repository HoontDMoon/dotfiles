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


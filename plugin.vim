" PLUGINS
call plug#begin('~/AppData/Local/nvim/plugged')

" Theme
"Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
"Plug 'joshdick/onedark.vim'
"Plug 'marko-cerovac/material.nvim'
"Plug 'kaicataldo/material.vim', { 'branch': 'main' }
"Plug 'hzchirs/vim-material'

" Dicord presence
Plug 'andweeb/presence.nvim'
"Plug 'vimsence/vimsence'
"Plug 'vbe0201/vimdiscord'
"Plug 'Stoozy/vimcord'

" Syntax
Plug 'sheerun/vim-polyglot'
"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'maxmellon/vim-jsx-pretty'

" Estatusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'
" Plug 'maximbaz/lightline-ale'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'vimlab/split-term.vim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Typing
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" Tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git
Plug 'tpope/vim-fugitive'

" Find fies
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" IDE
Plug 'dstein64/nvim-scrollview'


call plug#end()

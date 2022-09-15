# Neovim Configuration

This is my personal configuration for Neovim. It is heavily inspired by

Confirmed to work with Neovim 0.8.0.

## Installation

Clone this repository into your Neovim configuration directory:

```bash
git clone https://github.com/kevin-sg/noveim-configuration.git
cd noveim-configuration
```

Copy the `init.vim` file to your Neovim configuration directory:

```bash
# Linux
cp init.vim ~/.config/nvim/init.vim

# Windows
cp init.vim ~/AppData/Local/nvim/init.vim
```

---

## Plugins

Plugins installed with `vim-plug` will be automatically installed on the first run of Neovim.

Directory `~/AppData/Local/nvim-data/site/autoload/plug.vim` will be created.

```vim
" PLUGIN
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
"Plug 'itchyny/lightline.vim'
"Plug 'maximbaz/lightline-ale'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Git
Plug 'tpope/vim-fugitive'

" Find files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" IDE
Plug 'vimlab/split-term.vim'
Plug 'dstein64/nvim-scrollview'
"Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()
```

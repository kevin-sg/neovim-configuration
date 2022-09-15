" ============================== BASIC CONFIGURATION ========================

syntax on
set number
set mouse=a
set numberwidth=4
set clipboard=unnamed
set cursorline
set showcmd
set ruler
set nowrap

set cursorcolumn
set cursorline

"set listchars=eol:↲,tab:\|\ ,nbsp:␣,extends:…,trail:⋅
"set list
"set noexpandta
"retab!

"set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×

"set guifont=JetBrains:h12

set encoding=UTF-8
set fileencoding=UTF-8
set showmatch
set sw=2
set tags=./tags;/
set splitright
set hlsearch
set relativenumber
set laststatus=2
"set colorcolumn=80
set noshowmode
set updatetime=50
"set undolevels=1000
"set undoreload=10000
set linebreak

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

"runtime ~/AppData/Local/nvim/plugin.vim
ln -s ~/AppData/Local/nvim/config.vim ~/.config/nvim/init.vim


"autocmd BufWritePost * :NERDTreeRefreshRoot execute 'normal R' | wincmd p
autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p
autocmd BufWritePre * :%s/\s\+$//e " remove whitespaces

"============================= IDE CONFIGURATION ==========================
let mapleader=" "

inoremap jk <Esc>
"save
nmap <C-s> :w<CR>
" exit
nmap <C-q> :q!<CR>
" terminal
nnoremap <Leader>t :terminal<CR>
" preview buffer
nnoremap <C-p> :bprev<CR>
" next buffer
nnoremap <C-n> :bnext<CR>
" windows split vertical/horizontal
nnoremap <Leader>wh :split<CR>
nnoremap <Leader>wv :vsplit<CR>
" Para su correcto uso se debe hacer un split de pantalla con dos archivos, posicionado en cada archivo se hace un Leader +4 y se procede a comprar
nnoremap <Leader>dt :diffthis<CR>
" close current buffer
nnoremap <Leader>bd :bd<CR>
" Te lleva al final o el principio de llave relacionada {}[]()
nnoremap <Leader><Leader> <S-$>
" para recargar un archivo de forma manual
nnoremap <leader>fs :source $MYVIMRC<CR>
" moverse entre ventanas
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" search clean
nnoremap <silent> <Leader>c :nohlsearch<CR>h:echo " "<CR>

" THEME CONFIGURATION
" gruvbox-material

" if has('termguicolors')
"     set termguicolors
" endif

set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_disable_terminal_colors = 0
colorscheme gruvbox-material


" TERMINAL CONFIGURATION
" Terminal split
nnoremap <leader>tv :VTerm<CR>
nnoremap <leader>th :Term<CR>
let g:split_term_default_shell = "PowerShell"

" Identation configuration
"let g:indent_blankline_use_treesitter = v:true

" AIRLINE CONFIGURATION
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" SCROOLLBAR CONFIGURATION
" let g:set_highlights = 0
let g:scrollview_excluded_filetypes = ['nerdtree']
let g:scrollview_current_only = 1
let g:scrollview_winblend = 0
let g:scrollview_auto_workarounds = 0
" Position the scrollbar at the 80th character of the buffer
let g:scrollview_base = 'right'
"let g:scrollview_column = 120

" GIT CONFIGURATION
nmap <leader>gb :Git blame<cr>
nmap <leader>gs :Git<cr> " status
nmap <leader>gc :Git commit -v<cr>
nmap <leader>ga :Git add -p<cr>
nmap <leader>gm :Git commit --amend<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gu :Git pull<cr>
nmap <leader>gd :Git diff<cr>
nmap <leader>gw :Git write<cr>
nmap <leader>gl :Git log<cr>
nmap <leader>gh :DiffviewFileHistory<cr>
nmap <leader>mg :GitMessenger<cr>

" TELESCOPE CONFIGURATION
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" :Telescope find_files prompt_prefix=🔍

lua << EOF
  require('telescope').setup{
      defaults = { file_ignore_patterns = {"node_modules", "git"} },
      pickers = { find_files = { hidden = true } } }
EOF

" FZF CONFIGURATION

" Importar! install fd or rg
let $FZF_DEFAULT_COMMAND = 'fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,tmp} --type f"'
"let $FZF_DEFAULT_COMMAND = "fd  --follow bat --exclude node_modules"

" search
nmap <Leader>f :FZF<CR>

if exists('$TMUX')
  let g:fzf_layout = { 'tmux': '-p90%,60%' }
else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
endif


" EASEMOTION CONFIGURATION
nmap <Leader>s <Plug>(easymotion-s2)

" NERD TREE CONFIGURATION

"let g:NERDTreeIgnore = ['^node_modules$']


let g:NERDTreeShowHidden = 1

" let NERDTreeQue/itOnOpen=1        " Close NERDTree when opening a file
noremap <C-f> :NERDTree<CR>
nnoremap <C-t> :NERDTreeFind<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
"nnoremap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
nnoremap <Leader>r :NERDTreeRefreshRoot<CR>

"=================== BETTER COMMENTS CONFIGURATION ===================
"let g:bettercomments_language_aliases = { 'javascript': 'js' }

" EMMET CONFIGURATION
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_leader_key=','

" MULTIPLE CURSORS CONFIGURATION
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

let g:VM_mouse_mappings = 1
nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)

" PRETTIER CONFIGURATION
" let g:prettier#autoformat = 1
" let g:UtilSnipsExandsTrigger="<TAB>"

" ========================= NERDTree CONFIGURATION =============================
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

" ==================== NERDTree Sintaxt highlight CONFIGURATION ====================

let g:NERDTreeLimitedSyntax = 1

let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1

let g:NERDTreeHighlightCursorline = 1

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['ts'] = s:blue " sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['tsx'] = s:darkBlue " sets the color of css files to blue

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

"let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error

"let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
"let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['.cjs'] = 'ƛ'

" set g:NERDTreeExtensionHighlightColor if you want a custom color instead of the default one
let g:NERDTreeSyntaxEnabledExtensions = ['ts', 'tsx', 'js', 'jsx', 'json', 'sql', 'java', 'html', 'css', 'scss', 'jpg', 'jpge', 'bmp', 'gif', 'png', 'lua', 'md', 'py', 'rb', 'vim', '.gitignore' ]

"'.gitignore', '.prettierrc', '.prettierignore','.eslintrc.json', '.babelrc',
let g:NERDTreeSyntaxEnabledExactMatches = ['dropbox', 'node_modules', 'favicon.ico'] " enable highlight for dropbox and node_modules folders, and favicon.ico files with default colors


" ======================== PRETTIER & ESLINT =================================

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" ===============================================================================
" =========================== COC CONFIGURATION =================================
" ===============================================================================


" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" inoremap <silent><expr> <C-p>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<CR>" :
"       \ coc#refresh()

" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" inoremap <silent><expr> <C-y>

nmap <leader>cl :CocList extensions<CR>

augroup toggleCocExtensions
    autocmd!

    autocmd BufEnter *.* call CocActionAsync('deactivateExtension', 'coc-graphql')
    " autocmd BufEnter *.vue call CocActionAsync('deactivateExtension', 'coc-tsserver')
    " autocmd BufLeave *.vue call CocActionAsync('activeExtension', 'coc-tsserver')
    autocmd BufEnter *.graphql call CocActionAsync('activeExtension', 'coc-graphql')
    " autocmd BufEnter *.js call CocActionAsync('activeExtension', 'coc-tsserver')
    " autocmd BufEnter *.ts call CocActionAsync('activeExtension', 'coc-tsserver')
    " autocmd BufEnter *.html call CocActionAsync('activeExtension', 'coc-tsserver')
augroup END

    " Syntax = permite reconocer la sintaxis del archivo y lo obliga a implementarla
    " FileType = permite cargar otro tipo de enriquecimiento aparte de la sintaxis, para obligar es mejor usar ambos

    " autocmd BufNewFile,BufEnter *.php set syntax=tsx
    " autocmd BufNewFile,BufRead *.php set filetype=tsx

    " solo le cambio el fileType debido a que la sintaxis de archivos MD la reconoce bien, pero en ocasiones falla al reconocer el tipo de extensión
     autocmd BufNewFile,BufRead *.md set filetype=txt

" ======================== COC Diagnostic ===================================

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()

" ======================= COC EXTENSIONS =============================

let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ '@yaegassy/coc-intelephense',
    \ 'coc-diagnostic',
    \ 'coc-just-complete',
    \ 'coc-vue',
    \ 'coc-prettier',
    \ 'coc-docker',
    \ 'coc-sql',
    \ 'coc-python',
    \ 'coc-java',
    \ 'coc-tslint-plugin',
    \ 'coc-highlight',
    \ 'coc-graphql',
    \ 'coc-stylelint',
    \ 'coc-snippets',
    \ 'coc-emmet'
    \]


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ===================================================================================
" =========================== COC CONFIGURATION END =================================
" ===================================================================================

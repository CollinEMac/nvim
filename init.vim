" enables syntax highlighting
"
syntax on

" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

set signcolumn=yes

" adds line numbers
set number

" set relative line numbers
set relativenumber

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" show spaces
set list
set listchars=space:·

" show indent lines
set cursorcolumn
set cursorline

set colorcolumn=80

set noshowmode

let g:gitgutter_sign_solumn_always=1

call plug#begin('~/.config/nvim/plugged')

Plug 'shaunsingh/solarized.nvim'
Plug 'shaunsingh/nord.nvim'

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Lightline
Plug 'itchyny/lightline.vim'

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" minimap
Plug 'wfxr/minimap.vim'

" Elixir language
Plug 'elixir-lang/vim-elixir'
Plug 'thinca/vim-ref'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }

" For code commenting keybindings
Plug 'numToStr/Comment.nvim'

" lsp config
Plug 'neovim/nvim-lspconfig'

" minimap config
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

call plug#end()

colorscheme nord
set background=dark

set clipboard^=unnamed,unnamedplus

set title
set titlestring=%F

" For Comment.nvim
lua require('Comment').setup()

lua require('mvra')

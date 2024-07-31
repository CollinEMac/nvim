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

set noshowmode

let g:gitgutter_sign_solumn_always=1

call plug#begin('~/.config/nvim/plugged')

Plug 'shaunsingh/solarized.nvim'

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

call plug#end()

colorscheme solarized
set background=light

lua require('mvra')

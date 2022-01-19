set nocompatible

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'rust-lang/rust.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'elzr/vim-json'
Plug 'machakann/vim-highlightedyank'
Plug 'ekalinin/Dockerfile.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

" Ale autofixers
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1
let g:deoplete#enable_at_startup = 1

filetype plugin indent on
syntax enable
let g:rustfmt_autosave = 1

" turn hybrid line numbers on
set number relativenumber

inoremap jj <esc>
" Command with space
nnoremap <space> :
" Control p to open FZF for files
nnoremap <C-p> :Files<Cr>
" Control f to use ripgrep for search
nnoremap <C-f> :Rg<Cr>
" Control b to show buffers
nnoremap <C-b> :Buffers<Cr>
" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

set ignorecase smartcase
let g:sneak#label = 1
set clipboard=unnamedplus
noremap <S-l> gt
noremap <S-h> gT

colo darkblue
:set number

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

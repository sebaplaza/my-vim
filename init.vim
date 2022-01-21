set nocompatible

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'machakann/vim-sandwich'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'rust-lang/rust.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'elzr/vim-json'
Plug 'machakann/vim-highlightedyank'
Plug 'ekalinin/Dockerfile.vim'
Plug 'ap/vim-buftabline'
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

" Buf a line options (navigation)
set hidden
nnoremap <leader>a :bprev<CR>
nnoremap <leader>d :bnext<CR>

" Keymaps

" switch terminal mode with Esc
tnoremap <Esc> <C-\><C-n>
" Add current jira number to editor
nnoremap <leader>ji :read !git jira<CR>
" jj is like Esc in insert mode
inoremap jj <esc>
" Command with space
nnoremap <space> :
" Control p to open FZF for files
nnoremap <C-p> :Files<Cr>
" Control f to use ripgrep for search
nnoremap <C-f> :Rg<Cr>
" Control b to show buffers
nnoremap <C-b> :Buffers<Cr>
" change to folder of current file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

set ignorecase smartcase
set clipboard=unnamedplus
noremap <S-l> gt
noremap <S-h> gT

" color scheme
" colo darkblue

" turn hybrid line numbers on
set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

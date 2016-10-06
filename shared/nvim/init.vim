" Follow the leader
let g:mapleader=" "

" Plugged
call plug#begin('~/.config/nvim/plugged')

" Generic plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'bronson/vim-trailing-whitespace'

" Repeat commands
Plug 'tpope/vim-repeat'

" Fzf
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
" {{{
  set rtp+=~/.fzf
  nnoremap <silent> <leader><space> :Files<CR>
" }}}

" Airline
Plug 'itchyny/lightline.vim'
" {{{
  let g:lightline = {
        \ 'component': {
        \   'readonly': '%{&readonly?"":""}',
        \ },
        \ 'separator': { 'left': '', 'right': '' },
        \ 'subseparator': { 'left': '', 'right': '' }
        \ }
" }}}

" More langs
Plug 'sheerun/vim-polyglot'

" Finish NeoBundle
call plug#end()

" Make Esc faster to type
imap jk <Esc>

" Indentation
set shiftwidth=2
set expandtab
set tabstop=2
set cindent

" Use vim as it was supposed be
set hidden
set number

" Set number toggling and other stuff
function! NumberToggle()
  set relativenumber!
  set number!
endfunc
set relativenumber
set nonumber

" Do stuff when enter leave etc
autocmd InsertEnter * :call NumberToggle()
autocmd InsertLeave * :call NumberToggle()

" Clipboard
set clipboard=unnamedplus

" Yay cursor shape (on NeoVim)
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" FZF setup


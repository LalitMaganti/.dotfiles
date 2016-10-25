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
Plug 'tpope/vim-repeat'

" Fzf
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
" {{{
  set rtp+=~/.fzf
  nnoremap <silent> <leader><space> :Files<CR>
" }}}

" Appearance
Plug 'chriskempson/base16-vim'

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
Plug 'markjet7/gmpl.vim'
Plug 'vim-latex/vim-latex'
Plug 'sheerun/vim-polyglot'
"{{{
  let g:polyglot_disabled = ['latex']
"}}}

" Finish NeoBundle
call plug#end()

" Make Esc faster to type
imap jk <Esc>
map fj <Plug>IMAP_JumpForward

" Indentation
set shiftwidth=2
set expandtab
set tabstop=2
set cindent
autocmd FileType make setlocal noexpandtab

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

" Colorscheme
if (empty($TMUX))
  if (has("nvim"))
    let $nvim_tui_enable_true_color=1
  elseif (has("termguicolors"))
    set termguicolors
  else
    let base16colorspace=256
  endif
else
  let base16colorspace=256
endif
colorscheme base16-onedark

" Yay cursor shape (on NeoVim)
if (has("nvim"))
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
endif

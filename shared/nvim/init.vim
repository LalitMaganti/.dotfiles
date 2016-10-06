"
"Follow the leader
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

" Appearance
Plug 'joshdick/onedark.vim'

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

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
colorscheme onedark

" Yay cursor shape (on NeoVim)
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

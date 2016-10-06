" Neovim
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

" Airline
Plug 'itchyny/lightline.vim'

" More langs
Plug 'sheerun/vim-polyglot'

" Finish NeoBundle
call plug#end()

" Yay cursor shape
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Follow the leader
let mapleader=" "

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

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Set number toggling and other stuff
function! NumberToggle()
  set relativenumber!
  set number!
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" Let's make Vim impossible to use!
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Do stuff when enter leave etc
autocmd InsertEnter * :call NumberToggle()
autocmd InsertLeave * :call NumberToggle()
au FocusLost * :wa
au FocusLost * :call NumberToggle()
au FocusGained * :call NumberToggle()

" Clipboard
set clipboard=unnamedplus

" FZF setup
set rtp+=/usr/share/vim/vimfiles

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Powerline
let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

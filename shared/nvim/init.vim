" Neovim
call plug#begin('~/.config/nvim/plugged')

" Generic plugins
Plug 'tpope/vim-sensible'
Plug 'wellle/targets.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/conflict-marker.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" Synax checking
Plug 'scrooloose/syntastic'

" Repeat commands
Plug 'tpope/vim-repeat'

" Fzf
Plug 'junegunn/fzf.vim'

" Airline
Plug 'itchyny/lightline.vim'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Follow the leader
let mapleader=" "

" Finish NeoBundle
call plug#end()

" Yay cursor shape
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

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

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Indentation
set shiftwidth=2
set expandtab
set tabstop=2
set cindent

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Use vim as it was supposed be
set hidden

" Set number toggling and other stuff
set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set nonumber
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

autocmd InsertEnter * :call NumberToggle()
autocmd InsertLeave * :call NumberToggle()

" Clipboard
set clipboard=unnamedplus

" Powerline
let g:lightline = {
      \ 'colorscheme': 'monokai',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" Rust Racer
set hidden
let g:racer_cmd = "racer"
let $RUST_SRC_PATH="/usr/src/rust/src"

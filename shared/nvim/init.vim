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

" Clipboard
Plug 'svermeulen/vim-easyclip'

" Fzf
Plug 'junegunn/fzf.vim'

" Airline
Plug 'itchyny/lightline.vim'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Finish NeoBundle
call plug#end()

" Indentation
set shiftwidth=2
set expandtab
set tabstop=2
set cindent

" Use vim as it was supposed be
set hidden

"↓ in visual mode, when I press <space>d whatever I delete goes to the
"↓ clipboard, for example, <space>dd would delete the current line and I
"↓ could CTRL-C it into Firefox or whatever
vnoremap <Leader>d "+d

"↓ same, but just copies instead of deleting
vnoremap <Leader>y "+y

"↓ paste from the clipboard
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

"↓ same as above, but for normal mode
nnoremap <Leader>d "+d
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" copy whole file (keeping cursor position)
nnoremap <Leader>c :%y+<CR>

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

" Neovim
call plug#begin('~/.config/nvim/plugged')

" Add plugins
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
Plug 'junegunn/fzf.vim'

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

" Rust Racer
set hidden
let g:racer_cmd = "racer"
let $RUST_SRC_PATH="/usr/src/rust/src"

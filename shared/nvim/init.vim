" NeoBundle start
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))

" Add plugins
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'wellle/targets.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'rhysd/conflict-marker.vim'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'junegunn/fzf.vim'

" Rust
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'racer-rust/vim-racer'

" Finish NeoBundle
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" Indentation
set shiftwidth=2
set expandtab
set tabstop=2
set cindent

" Use vim as it was supposed be
set hidden

" Tmux
let g:tmux_navigator_no_mappings = 1
execute "set <M-h>=\eh"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>

" Rust Racer
set hidden
let g:racer_cmd = "racer"
let $RUST_SRC_PATH="/usr/src/rust/src"

" Wrap window-move-cursor
function! s:GotoNextWindow( direction, count )
  let l:prevWinNr = winnr()
  execute a:count . 'wincmd' a:direction
  return winnr() != l:prevWinNr
endfunction

" Wrap around jumping
function! s:JumpWithWrap( direction, opposite )
  if ! s:GotoNextWindow(a:direction, v:count1)
    call s:GotoNextWindow(a:opposite, 999)
  endif
endfunction

" Wraparound navigation of panes
nnoremap <silent> <C-w>h :<C-u>call <SID>JumpWithWrap('h', 'l')<CR>
nnoremap <silent> <C-w>j :<C-u>call <SID>JumpWithWrap('j', 'k')<CR>
nnoremap <silent> <C-w>k :<C-u>call <SID>JumpWithWrap('k', 'j')<CR>
nnoremap <silent> <C-w>l :<C-u>call <SID>JumpWithWrap('l', 'h')<CR>

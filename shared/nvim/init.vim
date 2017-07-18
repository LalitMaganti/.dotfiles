" Follow the leader
let g:mapleader=" "

" Plugged
call plug#begin('~/.local/share/nvim/plugged')

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
Plug 'SirVer/ultisnips'
"{{{
  " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"
"}}}
Plug 'honza/vim-snippets'
"{{{
  let g:vimtex_view_method = "mupdf"
"}}}
Plug 'markjet7/gmpl.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'lervag/vimtex'
"{{{
  let g:vimtex_latexmk_progname = "nvr"
"}}}
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

" Put this in vimrc, add custom commands in the function.
autocmd BufLeave,FocusLost * silent! wall

" Clipboard
set clipboard=unnamedplus

" Colorscheme
if (empty($TMUX))
  if (has("termguicolors"))
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

" Plugged
call plug#begin('~/.local/share/nvim/plugged')
"
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

" Finish Plugged
call plug#end()

" Indentation
set shiftwidth=2
set expandtab
set tabstop=2
set cindent

" Use vim as it was supposed be
set hidden
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

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

" Plugged
call plug#begin(stdpath('data') . '/plugged')

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
set notermguicolors
colorscheme base16-onedark

" Cursor shape
set guicursor=i:ver25-iCursor

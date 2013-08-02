set nocompatible
set nowrap

let bundle = '~/.vim/bundle'

filetype off

exec 'set rtp+='.bundle.'/vundle'

call vundle#rc(bundle)

Bundle "gmarik/vundle"
" github username with dashes
Bundle 'vim-scripts/ragtag.vim'
" original repo
Bundle 'altercation/vim-colors-solarized'
" with extension
Bundle 'nelstrom/vim-mac-classic-theme.git'
" short uri
Bundle 'gh:gmarik/snipmate.vim.git'
Bundle 'kien/ctrlp.vim'
Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdcommenter'

syntax on
filetype plugin indent on      " Automatically detect file types.
set relativenumber

au FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

" disable key arrow for sake of native vi navigation
noremap! <Up> <esc> :wincmd k<cr>
noremap! <Down> <esc> :wincmd j<cr>
noremap  <Left> <esc> :wincmd h<cr>
noremap! <Left> <esc> :wincmd h<cr>
noremap! <Right> <esc> :wincmd l<cr>

"au BufWritePost $MYVIMRC :source $MYVIMRC<cr>

let mapleader="\\"
let maplocalleader="\\"

inoremap jj <Esc>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


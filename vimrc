set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'Lokaltog/vim-powerline'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'paradigm/SkyBison'
Bundle 'mattn/gist-vim'
Bundle 'AndrewRadev/linediff.vim'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'sukima/xmledit'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
" Bundle 'airblade/vim-gitgutter'
Bundle 'vim-scripts/DirDiff.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'mattn/emmet-vim'
Bundle 'wting/rust.vim'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'mxw/vim-jsx'
Bundle 'derekwyatt/vim-scala'
Bundle 'vim-scripts/L9'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/TabBar'

filetype plugin indent on
syntax enable

set guioptions=
set guifont=Droid\ Sans\ Mono\ 11

set tabstop=4
set shiftwidth=4
set number
set hidden
set virtualedit=block
set hlsearch
set shell=/bin/sh
"set relativenumber

set background=dark
let g:solarized_termtrans=1
if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    colorscheme solarized
endif

" Nerd Tree config
autocmd vimenter * if !argc() | NERDTree | endif
map <C-f> :NERDTreeToggle<CR>

command FormatTag :normal ^Whr<CR>:s/" /"\r/g<CR>V/><CR>=
au FileType ruby setl sw=2 sts=2 et
au FileType puppet setl sw=2 sts=2 et

" Tab between buffers
:map <C-tab> :bp<cr>
:map <C-S-tab> :bn<cr>

" Search Files
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Taglist

let Tlist_Show_One_File = 1
let Tlist_Highlight_Tag_On_BufEnter = 0
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type = "name"
map <C-t> :TlistToggle<CR>

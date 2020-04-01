" General
filetype indent on
set colorcolumn=80
set hlsearch


" Split switching bindings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-surround'

Plugin 'w0rp/ale'

Plugin 'morhetz/gruvbox'

Plugin 'tpope/vim-sensible'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'Valloric/YouCompleteMe'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'pangloss/vim-javascript'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" NERDTree stuff
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" NERDTree tabs
let g:nerdtree_tabs_open_on_console_startup=1


" Colourschemes
colorscheme gruvbox
set background=dark
set termguicolors
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm]]]]

highlight Normal ctermbg=black ctermfg=white

let g:gruvbox_contrast_dark = 'hard'
augroup FileTypeSpecificAutocommands
    autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd FileType php setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

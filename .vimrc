set nocompatible
filetype off
set t_Co=256
set rtp+=~/.vim/bundle/Vundle.vim
set nobackup
set nowritebackup
set noswapfile
set clipboard=unnamed
set backspace=indent,eol,start
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'leafgarland/typescript-vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'Chiel92/vim-autoformat'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'


call vundle#end()

set term=screen-256color
let g:solarized_termcolors=256

syntax enable
set background=light
colo solarized

" Ctrl P Config
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""' "Dont index ctrl-p
let g:ctrlp_use_caching = 1

" Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2
let g:airline_theme='solarized'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let mapleader = "\<space>"
nmap <leader>vr :vsp $MYVIMRC
nmap <leader>so :source $MYVIMRC

" Cycle through buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

filetype plugin indent on

set expandtab
set tabstop=4
set softtabstop=2
set shiftwidth=2
set autoindent
set number
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

" Nerd tree config
" autocmd StdinReadPre * let s:std_in=1
map <C-n> :NERDTreeToggle<CR>
  
imap <C-c> <CR><Esc>O

" Ctrl d to close buffer
nnoremap <C-d> :bd<CR>

" YCM
imap <S-Tab> <Plug>delimitMateS-Tab
set completeopt-=preview

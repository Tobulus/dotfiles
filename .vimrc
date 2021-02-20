syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent


call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2

imap <C-f> <plug>(fzf-complete-line)

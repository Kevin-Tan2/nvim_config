"/////////////////////////////////////////////////////////////////////////////
"//>>>>>>>>>>>>>>>>>>>>>>>>>>> General VIM <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//
"/////////////////////////////////////////////////////////////////////////////
syntax on
set rnu
set nu
set ic
set mouse=a
set nowrap

nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" To set indentation character
set expandtab
set tabstop=2
set shiftwidth=2

" Set a vertical line as a column marker 
"set colorcolumn=81
"highlight ColorColumn ctermbg=7

" Set a text width auto wrap
set textwidth=80
set breakindent
set breakindentopt=shift:2
set linebreak

" Set a softwrap
set fo?
set fo+=t
set fo-=l

" Terminal shortcut use <C-w>N
nnoremap <C-w>N :botright terminal<CR>

" Following keybind is to always open the terminal at the bottom
nnoremap <leader>t <C-w>b :bel terminal<CR>

source ~/.config/nvim/syntax/dts.vim
source ~/.config/nvim/fdetect/dts.vim

source ~/.config/nvim/fdetect/xaml.vim

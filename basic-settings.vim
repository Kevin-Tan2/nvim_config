"/////////////////////////////////////////////////////////////////////////////
"//>>>>>>>>>>>>>>>>>>>>>>>>>>> General VIM <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//
"/////////////////////////////////////////////////////////////////////////////
syntax on
set rnu
set nu
set ic
set mouse=a
set nowrap

set encoding=UTF-8

set termguicolors
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" let mapleader = " "

if has('win32')
  set fileformats=dos
endif

nnoremap <leader>vs :vsplit<CR>

" To set indentation character
set expandtab
set tabstop=2
set shiftwidth=2
set signcolumn=auto:2

if has('win32')
  set nofixeol
  set nofixendofline
endif

" Set a vertical line as a column marker 
"set colorcolumn=81
"highlight ColorColumn ctermbg=7

" Set a text width auto wrap
set textwidth=80
set breakindent
set breakindentopt=shift:4
set linebreak

" Set a softwrap
set fo?
set fo+=t
set fo-=l

" Terminal shortcut use <C-w>N
nnoremap <C-w>N :botright terminal<CR>

"" Following keybind is to always open the terminal at the bottom
"nnoremap <leader>t <C-w>b :bel terminal<CR>

nnoremap <M-z> :set invwrap<CR>

"" Remove how to disable from the context menu
"aunmenu PopUp.How-to\ disable\ mouse
"aunmenu PopUp.-1-

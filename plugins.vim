call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Autocompletion Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git Tracking Plugin
Plug 'lewis6991/gitsigns.nvim'

" Omnisharp (C# language server)
Plug 'OmniSharp/omnisharp-vim'

" Status 
Plug 'itchyny/lightline.vim'

" giving vim multiple cursors 
Plug 'mg979/vim-visual-multi'

" vim git extension 
Plug 'airblade/vim-gitgutter'

" terminal emulator 
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" GOYO Markdown editor 
Plug 'junegunn/goyo.vim'

" Jupyter Notebook 
Plug 'dccsillag/magma-nvim', {'do': ':UpdateRemotePlugins'}

" Catppuccin colorscheme
Plug 'catppuccin/nvim'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


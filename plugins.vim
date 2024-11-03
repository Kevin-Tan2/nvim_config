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
" Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" nerdtree replacement
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'ryanoasis/vim-devicons'

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Autocompletion Plugin
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Multi-cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" General LSP Package Manager
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mhartington/formatter.nvim'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Context to display current function name
Plug 'nvim-treesitter/nvim-treesitter-context', {'do': ':TSUpdate'}

" rust lsp
Plug 'rust-lang/rust.vim'

" Git Tracking Plugin
Plug 'lewis6991/gitsigns.nvim'

" Git diff view Plugin
Plug 'sindrets/diffview.nvim'

" Omnisharp (C# language server)
"Plug 'OmniSharp/omnisharp-vim'
Plug 'Hoffs/omnisharp-extended-lsp.nvim'

" Tmux navigator
Plug 'christoomey/vim-tmux-navigator'

" Status 
Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-fugitive'

" giving vim multiple cursors 
Plug 'mg979/vim-visual-multi'

" vim git extension 
Plug 'airblade/vim-gitgutter'

" terminal emulator 
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" GOYO Markdown editor 
Plug 'junegunn/goyo.vim'

" Catppuccin colorscheme
Plug 'catppuccin/nvim'

" Everforest colorscheme
Plug 'sainnhe/everforest'

" dracula theme
Plug 'dracula/vim'

Plug 'vimwiki/vimwiki'

"Plug 'cdelledonne/vim-cmake'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'


" ============================== Harpoon ================================
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon', { 'branch': 'harpoon2' }


" ===================== nvim cmp related ================================
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
"Plug 'L3MON4D3/LuaSnip'
"Plug 'saadparwaiz1/cmp_luasnip'

" For ultisnips users.
" Plug 'SirVer/ultisnips'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'
" =======================================================================

" GDB debug
Plug 'sakhnik/nvim-gdb'

" VimSpector debug viewer
Plug 'puremourning/vimspector'

" VimTex (latex)
Plug 'lervag/vimtex'

" VimGrepper replace pattern across multiple files
Plug 'mhinz/vim-grepper'

" vim grammar check plugins
Plug 'rhysd/vim-grammarous'

" Zen mode
Plug 'folke/zen-mode.nvim'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


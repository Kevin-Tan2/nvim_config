local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Shorthand notation for GitHub; translates to https://github.com/junegunn/seoul256.vim.git
Plug('junegunn/seoul256.vim')
-- Any valid git URL is allowed
Plug('https://github.com/junegunn/vim-easy-align.git')
-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug('fatih/vim-go', { ['tag'] = '*' })

-- File Tree explorer
Plug('lambdalisue/fern.vim')
Plug('lambdalisue/nerdfont.vim')
Plug('lambdalisue/glyph-palette.vim')
Plug('lambdalisue/fern-renderer-nerdfont.vim')
Plug('ryanoasis/vim-devicons')

-- Use 'dir' option to install plugin in a non-default directory
-- Post-update hook: run a shell command after installing or updating the plugin
-- Post-update hook can be a lambda expression
Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })
Plug('junegunn/fzf')

-- Status Bar
Plug('itchyny/lightline.vim')

-- Git
Plug('tpope/vim-fugitive')
Plug('airblade/vim-gitgutter')

-- Multi-cursor
Plug('mg979/vim-visual-multi', { ['branch'] = 'master' })

-- terminal emulator
Plug('akinsho/toggleterm.nvim', { ['tag'] = '*' })

-- General LSP Package Manager
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')

-- Tree sitter
-- Context to display current function name
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('nvim-treesitter/nvim-treesitter-context', { ['do'] = ':TSUpdate' })

-- Git diff view Plugin
Plug('sindrets/diffview.nvim')

-- Omnisharp (C# language server)
-- Extended Omnisharp is used for go to definition and decompilation to remedy omnisharp's default decomp
-- Plug 'OmniSharp/omnisharp-vim'
Plug('Hoffs/omnisharp-extended-lsp.nvim')

-- Colorschemes
Plug('catppuccin/nvim')
Plug('sainnhe/everforest')
Plug('dracula/vim')

-- Wiki plugin
Plug('vimwiki/vimwiki')

-- VimSpector debugger viewer
Plug('puremourning/vimspector')

-- Mason LSP Package Manager
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspcofig.nvim')
Plug('neovim/nvim-lspcofig.nvim')

-- Autocomplete
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')

vim.call('plug#end')

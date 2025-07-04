local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('akinsho/toggleterm.nvim', {
    ['tag'] = '*'
})

-- File Tree explorer
Plug('lambdalisue/fern.vim')
Plug('lambdalisue/nerdfont.vim')
Plug('lambdalisue/glyph-palette.vim')
Plug('lambdalisue/fern-renderer-nerdfont.vim')
Plug('ryanoasis/vim-devicons')

---- Use 'dir' option to install plugin in a non-default directory
---- Post-update hook: run a shell command after installing or updating the plugin
---- Post-update hook can be a lambda expression
--Plug('junegunn/fzf', { ['do'] = function()
--  vim.fn['fzf#install']()
--end })
--Plug('junegunn/fzf.vim')

-- Telesope to replace fzf because for some reason it doesn't work anymore
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

-- Status Bar
Plug('itchyny/lightline.vim')

-- Git
Plug('tpope/vim-fugitive')
Plug('lewis6991/gitsigns.nvim')
-- Plug('airblade/vim-gitgutter')

-- Multi-cursor
Plug('mg979/vim-visual-multi', { ['branch'] = 'master' })

-- terminal emulator
Plug('akinsho/toggleterm.nvim', { ['tag'] = '*' })

-- General LSP Package Manager
Plug('mason-org/mason.nvim')
Plug('mason-org/mason-lspconfig.nvim')
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

-- Autocomplete
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

-- For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

-- ============================== Harpoon ================================
Plug('nvim-lua/plenary.nvim')
Plug('ThePrimeagen/harpoon', { ['branch'] = 'harpoon2' })

-- TMUX Navigation binding
Plug('christoomey/vim-tmux-navigator')

vim.call('plug#end')





local vim_config_path = vim.fn.stdpath("config")

-- Load all the modules in this directory
local plugin_path = vim_config_path .. "/lua/plugins"
for _, file in ipairs(vim.fn.readdir(plugin_path)) do
    if file:match("%.lua$") and file ~= "global.lua" and file ~= "init.lua" then
        local module_name = "plugins." .. file:gsub("%.lua$", "")
        require(module_name)
    end
end


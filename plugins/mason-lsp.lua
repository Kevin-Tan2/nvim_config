require("mason").setup()
require("mason-lspconfig").setup()

-- Setup language servers.
local lspconfig = require('lspconfig')

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup default config for all servers
vim.lsp.config('*', {
    root_markers = {'.git'},
    capabilities = capabilities,
})

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
vim.lsp.config.clangd = {
    filetypes = { 'c', 'cpp' },
}

vim.lsp.config.cmake = {
    filetypes = { 'CMakeLists.txt', 'cmake' },
}

-- enable lua language server
vim.lsp.config.lua_ls = require('lspconfig.configs.lua_ls')
vim.lsp.config.lua_ls.root_dir = vim.loop.cwd()
vim.lsp.config.lua_ls.filetypes = {"lua"}

-- Setting default configuration for C# lsp as they are not part of neovim by default
vim.lsp.config.omnisharp = require('lspconfig.configs.omnisharp')

--vim.lsp.config('omnisharp', {
--    cmd = { 'omnisharp' },
--    settings = {
--        FormattingOptions = {
--            EnableEditorConfigSupport = true
--        },
--        MsBuild = {},
--        RenameOptions = {},
--        RoslynExtensionsOptions = {},
--        Sdk = {
--            IncludePrereleases = true
--        }
--
--    },
--    capabilities = capabilities,
--    --  enable_ms_build_load_projects_on_demand = true,
--    handlers = {
--        ["textDocument/definition"] = require('omnisharp_extended').definition_handler,
--        ["textDocument/references"] = require('omnisharp_extended').references_handler,
--        ["textDocument/implementation"] = require('omnisharp_extended').implementation_handler,
--    },
--})

lspconfig.spectral.setup {
    capabilities = capabilities
}
lspconfig.ltex.setup {
    filetypes = { 'tex' },
    capabilities = capabilities
}
lspconfig.pyright.setup {
    capabilities = capabilities
}
lspconfig.rust_analyzer.setup {
    capabilities = capabilities
}

-- Enable language
vim.lsp.enable('lua_ls')
vim.lsp.enable('omnisharp')



-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        --vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
        -- local client = vim.lsp.get_client_by_id(ev.data.client_id)
        -- if client:support_method('textDocument/completion') then
        --     vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        -- end

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<space>k', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})


-- Install formatter.nvim or use existing formatter plugin
require('formatter').setup({
    logging = false,
    filetype = {
        cpp = {
            function()
                return {
                    exe = "clang-format",
                    args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
                    stdin = true,
                }
            end
        },
        c = {
            function()
                return {
                    exe = "clang-format",
                    args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
                    stdin = true,
                }
            end
        }
    }
})



-- local omnisharp_server_location = os.getenv('OMNISHARP_LANGUAGE_SERVER')
--
-- local pid = vim.fn.getpid()
-- require('lspconfig').omnisharp.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = { omnisharp_server_location, "--languageserver" , "--hostPID", tostring(pid) },
-- })
--

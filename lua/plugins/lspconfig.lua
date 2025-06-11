require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "omnisharp", "clangd" },
    automatic_enable = false
}

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


        for _, client in ipairs(vim.lsp.get_clients()) do
            print("Attaching LSP", client.name)
            if client.name == "omnisharp" then
                local opts_ext = { buffer = ev.buf, remap = false }
                local omnisharp_extended = require('omnisharp_extended')
                vim.keymap.set('n', 'gd', omnisharp_extended.lsp_definition, opts_ext)
                vim.keymap.set('n', 'gi', omnisharp_extended.lsp_implementation, opts_ext)
                vim.keymap.set('n', 'gD', omnisharp_extended.lsp_type_definition, opts_ext)
                vim.keymap.set('n', 'gr', omnisharp_extended.lsp_references, opts_ext)
                break
            end

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        end

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '[d', function()
            vim.diagnostic.jump({ count = 1, float = true })
        end, opts)
        vim.keymap.set('n', ']d', function()
            vim.diagnostic.jump({ count = -1, float = true })
        end, opts)
        vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
        vim.keymap.set('n', '<space>k', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})

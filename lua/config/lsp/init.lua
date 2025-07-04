require('cmp').setup {
    sources = {
        { name = 'nvim_lsp' }
    }
}

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('*', {
    capabilities = capabilities,
    root_markers = { '.git' },
})


local vim_config_path = vim.fn.stdpath("config")
local lsp_path = vim_config_path .. "/lua/config/lsp"

-- Then load all other LSP configs
for _, file in ipairs(vim.fn.readdir(lsp_path)) do
    if file:match("%.lua$") and file ~= "global.lua" then
        local module_name = "config.lsp." .. file:gsub("%.lua$", "")
        require(module_name)
    end
end

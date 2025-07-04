local vim_config_path = vim.fn.stdpath("config")

require("config.basic-settings")
require("config.ftdetect")
require("plugins")

vim.cmd.colorscheme("dracula")

vim.cmd [[

highlight Normal guibg=none
"highlight Normal guibg='#1A191E'
"highlight NonText guibg=none
"highlight Normal ctermbg=none
"highlight NonText ctermbg=none

]]


-- Load all LSP's in "lua/config/lsp"
---local lsp_path = vim_config_path .. "/lua/config/lsp"
---
----- Then load all other LSP configs
---for _, file in ipairs(vim.fn.readdir(lsp_path)) do
---    if file:match("%.lua$") and file ~= "global.lua" then
---        local module_name = "config.lsp." .. file:gsub("%.lua$", "")
---        require(module_name)
---    end
---end

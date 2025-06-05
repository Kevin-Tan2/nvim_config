local vim_config_path = vim.fn.stdpath("config")

-- Load the basic settings
require("config.basic-settings")

-- Load all of the ftdetect configs
local ftdetect_path = vim_config_path .. "/lua/config/ftdetect"
for _, file in ipairs(vim.fn.readdir(ftdetect_path)) do
    if file:match("%.lua$") and file ~= "global.lua" and file ~= "init.lua" then
        local module_name = "config.ftdetect." .. file:gsub("%.lua$", "")
        require(module_name)
    end
end

-- First, start the global plugins config
require("plugins")

-- Load all of the plugin configs
local plugin_path = vim_config_path .. "/lua/plugins"
for _, file in ipairs(vim.fn.readdir(plugin_path)) do
    if file:match("%.lua$") and file ~= "global.lua" and file ~= "init.lua" then
        local module_name = "plugins." .. file:gsub("%.lua$", "")
        require(module_name)
    end
end

vim.cmd.colorscheme("dracula")
vim.cmd([[

highlight Normal guibg=none
"highlight NonText guibg=none
"highlight Normal ctermbg=none
"highlight NonText ctermbg=none

]])


-- Load all LSP's in "lua/config/lsp"
local lsp_path = vim_config_path .. "/lua/config/lsp"

-- Then load all other LSP configs
for _, file in ipairs(vim.fn.readdir(lsp_path)) do
    if file:match("%.lua$") and file ~= "global.lua" then
        local module_name = "config.lsp." .. file:gsub("%.lua$", "")
        require(module_name)
    end
end

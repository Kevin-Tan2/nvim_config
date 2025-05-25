local vim_config_path = vim.fn.stdpath("config")


-- First, explicitly load the global configuration
require("plugins.init")
local plugin_path = vim_config_path .. "/lua/plugins"

for _, file in ipairs(vim.fn.readdir(plugin_path)) do
  if file:match("%.lua$") and file ~= "global.lua" and file ~= "init.lua" then
    local module_name = "plugins." .. file:gsub("%.lua$", "")
    require(module_name)
  end
end

vim.cmd.colorscheme("dracula")


---- Load all LSP's in "lua/config/lsp"
--local lsp_path = vim_config_path .. "/lua/config/lsp"
--
---- Then load all other LSP configs
--for _, file in ipairs(vim.fn.readdir(lsp_path)) do
--  if file:match("%.lua$") and file ~= "global.lua" then
--    local module_name = "config.lsp." .. file:gsub("%.lua$", "")
--    require(module_name)
--  end
--end

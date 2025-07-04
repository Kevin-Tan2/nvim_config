local vim_config_path = vim.fn.stdpath("config")
local ftdetect_path = vim_config_path .. "/lua/config/ftdetect"

for _, file in ipairs(vim.fn.readdir(ftdetect_path)) do
    if file:match("%.lua$") and file ~= "global.lua" and file ~= "init.lua" then
        local module_name = "config.ftdetect." .. file:gsub("%.lua$", "")
        require(module_name)
        -- vim.print(module_name)
    end
end

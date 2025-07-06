require("config.basic-settings")
require("config.ftdetect")
require("plugins")

-- Must be called after plugins
require("config.lsp")

vim.cmd.colorscheme("dracula")

vim.cmd [[

highlight Normal guibg=none
"highlight Normal guibg='#1A191E'
"highlight NonText guibg=none
"highlight Normal ctermbg=none
"highlight NonText ctermbg=none

]]

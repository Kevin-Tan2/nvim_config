-- General Vim Setup
vim.cmd [[ syntax on ]]

vim.o.ic = true
vim.o.rnu = true
vim.o.nu = true
vim.o.ic = true
vim.o.mouse = 'a'
vim.o.wrap = false

-- Ensure that page scroll starts when the cursor is 8 lines away from the edge
-- of the screen
vim.o.scrolloff = 8

vim.o.incsearch = true

vim.o.encoding = 'UTF-8'
vim.o.termguicolors = true

-- Centres the cursor the middle line when moving half a page


-- Configure Tab character
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- SignColumn when text wrap happen
vim.o.scl = "auto:2"

if vim.fn.has('win32') then
    vim.o.fixeol = false
end


-- Set a text width auto wrap
vim.o.textwidth = 80
vim.o.breakindent = true
vim.o.breakindentopt = "shift:4"
vim.o.linebreak = true

-- Set a softwrap
vim.opt.formatoptions:append('t')
vim.opt.formatoptions:remove('l')



require("config.basic-settings.maps")

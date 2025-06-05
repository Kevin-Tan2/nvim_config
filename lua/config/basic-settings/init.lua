-- General Vim Setup
vim.cmd([[
	syntax on
]])

vim.o.ic = true
vim.o.rnu = true
vim.o.nu = true
vim.o.ic = true
vim.o.mouse ='a'
vim.o.wrap = false

vim.o.encoding = 'UTF-8'
vim.o.termguicolors = true

-- Centres the cursor the middle line when moving half a page
vim.keymap.set('n', '<C-u>', '<C-u>zz', {remap=false})
vim.keymap.set('n', '<C-d>', '<C-d>zz', {remap=false})

-- Vertically split
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>', {remap=false})


-- Configure Tab character
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- SignColumn when text wrap happen
vim.o.scl="auto:2" 

if vim.fn.has('win32') then
    vim.o.fixeol = false 
end


-- Set a text width auto wrap
vim.o.textwidth=80
vim.o.breakindent=true
vim.o.breakindentopt="shift:4"
vim.o.linebreak=true

-- Set a softwrap
vim.opt.formatoptions:append('t')
vim.opt.formatoptions:remove('l')


-- Toggle wrap using Alt-Z
vim.keymap.set({'n', 'i', 'v', 'x'}, "<M-z>", 
    function () 
        vim.o.wrap = not(vim.o.wrap)
    end
)


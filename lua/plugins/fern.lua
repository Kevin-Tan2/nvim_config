vim.cmd([[
	augroup my-glyph-palette
	  autocmd! *
	  autocmd FileType fern call glyph_palette#apply()
	  autocmd FileType nerdtree,startify call glyph_palette#apply()
	augroup END
]])
vim.g["fern#renderer"] = "nerdfont"
vim.g.guifont = "DroidSansMono Nerd Font 11"

vim.keymap.set('n', '<C-t>', ':Fern . -drawer -width=50 -toggle<CR>')
vim.keymap.set('n', '<C-f>', ':Fern . -drawer -width=50 -toggle -reveal=%<CR>')
vim.keymap.set('n', '<leader>ex', ':Fern . -reveal=%<CR>')

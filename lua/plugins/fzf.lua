-- 1. Search files in folders
-- 2. Search string in files using RipGrep
-- 3. Search currently opened files/buffer
-- 4. Search previously opened files
vim.keymap.set('n', '<leader>ff', ':Files<CR>')
vim.keymap.set('n', '<leader>fr', 'Rg<CR>')
vim.keymap.set('n', '<leader>fb', ':Buffers<CR>')
vim.keymap.set('n', '<leader>fh', ':History<CR>')


-- function TogglePreviewWindow()
--    vim.call(vim.fn["fzf#vim#grep"], '"rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>)', 1, vim.fn['fzf#vim#with_preview'](), '<bang>0')
-- end

 vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
   pattern = {'*.xaml'},
   command = 'setlocal filetype=xml'
 })
 vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
   pattern = {'*.axaml'},
   command = 'setlocal filetype=xml'
 })

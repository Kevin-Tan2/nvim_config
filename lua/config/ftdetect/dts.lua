 vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
   pattern = {'*.overlay'},
   command = 'setlocal filetype=dts'
 })

 vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
   pattern = {'*.dtsi'},
   command = 'setlocal filetype=dts'
 })

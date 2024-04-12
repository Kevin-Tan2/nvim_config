" replaces vim.lsp.buf.definition()
nnoremap gd <cmd>lua require('omnisharp_extended').lsp_definition()<cr>

" replaces vim.lsp.buf.references()
nnoremap gr <cmd>lua require('omnisharp_extended').lsp_references()<cr>

" replaces vim.lsp.buf.implementation()
nnoremap gi <cmd>lua require('omnisharp_extended').lsp_implementation()<cr>

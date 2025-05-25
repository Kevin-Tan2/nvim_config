vim.lsp.config.clangd = {
  cmd = {'clangd'},
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_markers = { '.git' },
}

vim.lsp.enable('clangd')

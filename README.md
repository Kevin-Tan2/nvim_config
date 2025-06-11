## Getting Started

For windows user, copy the following command to powershell
```
mv nvim_config ~\AppData\Local\nvim
```

For Linux user, copy the following command to bash
```
mv nvim_config ~/.config/nvim
```

### Pre-Requisite

Make sure that you have installed [vim-plug](https://github.com/junegunn/vim-plug).
* (in the future I might migrate to `packer.nvim` so it will be integrated with LUA)

### Initial start-up

1. Run nvim anywhere
2. Exec `:PlugInstall`

### Adding new LSP config

Add a new file under `lua/config/lsp/<YOUR_LSP_CONFIG>.lua`.
Don't forget to add `vim.lsp.enable(<LSP_NAME>)` at the end of the file to
enable the LSP.

## What's new with the config?

1. Now most of the config has been migrated to LUA programming language
2. FZF is broken in my config, I decided to change to Telescope (which I find it
   nicer to look at)
3. lsp-config now has been updated to use in-built `vim.lsp.config` in lastest nvim 0.11 (or above)

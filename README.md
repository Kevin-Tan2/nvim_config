## Getting Started


### Pre-Requisite

Make sure that you have installed [vim-plug](https://github.com/junegunn/vim-plug).
* (in the future I might migrate to `packer.nvim` so it will be integrated with LUA)

### Adding the config

For windows user, copy the following command to powershell
```
mv nvim_config ~\AppData\Local\nvim
```

For Linux user, copy the following command to bash
```
mv nvim_config ~/.config/nvim
```

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


## Quick How-To Article

### Default Keymaps - General

default <leader> is backslash '\\' key

| Mode | Map            | Description                                                 |
|------|----------------|-------------------------------------------------------------|
| n    | `<C-f>`        | Reveal file from the file explorer                          |
| n    | `<leader>ff`   | Open Telescope to search through files                      |
| n    | `<leader>fr`   | Open Telescope (RipGrep) to search through buffers in files |
| n, i | `<leader>tt`   | Open Telescope to search through buffers in files           |
| n    | `<leader>vs`   | Open up vertical split in the current tab                   |


#### Telescope

File navigator (think of it like <C-p> or Ctrl-p in VSCode), once you have typed
in a certain keyword in the buffer, use Up or Down arrow key (or <C-j> to go
down,  <C-k> to go up) to select then press Enter key to open up the selected
file.

### Default Keymaps - Coding

| Mode | Map         | Description                                                 |
|------|-------------|-------------------------------------------------------------|
| n    | `gd`        | Go to definition                                            |
| n    | `gr`        | Find references or usages                                   |
| n    | `gi`        | Find implementations                                        |
| n    | `K`         | Open up documentation of a symbol whilst hovering on cursor |
| n    | `<space>e`  | Inspect error/warning whilst hovering on cursor             |
| n    | `<space>ca` | Code Actions: get available actions on code                 |
| n    | `<space>rn` | Rename a symbol                                             |
| n    | `<space>f`  | Format code in the default codestyle                        |


for more information, go to `lsp/config/lsp-preset/lspconfig.lua` for more
keymaps or to modify the code keymap.

#### Troubleshoot

Ensure that the message `Attaching LSP Loading...` appeared at the bottom left
of the window the moment you opened up a filetype of programming language.

If not, try run the command `:e` to forcefully running the LSP. 
Run `:checkhealth vim.lsp` and ensure that the client is active.

Last resort run `:lua vim.lsp.start(vim.lsp.config.<YOUR LSP CLIENT>)`.

Also check in `:Mason`, if you have an lsp client for specific language has been
installed.

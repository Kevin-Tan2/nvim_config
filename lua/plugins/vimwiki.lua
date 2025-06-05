vim.o.compatible = false

vim.cmd([[

filetype plugin on
syntax on

]])

learning_wiki = {
    ['path'] = '~/Documents/learning_wiki'
}

external_wiki = {
    ['syntax'] = 'markdown',
    ['ext'] = '.md'
}

vim.g.vimwiki_list = {
    learning_wiki,
    external_wiki,
}

vim.g.vimwiki_global_ext = 1


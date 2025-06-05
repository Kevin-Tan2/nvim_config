-- Too lazy to convert stuff that I previously setup so use CMD
vim.cmd[[

nmap <F5> :call vimspector#Launch()<CR>
nmap <space>n <Plug>VimspectorStepOver<CR>
nmap <space>si :call vimspector#StepInto()<CR>
nmap <space>so :call vimspector#StepOut()<CR>
nmap <space>c :call vimspector#Continue()<CR>
nmap <space>st :call vimspector#Stop()<CR>
nmap <space>dr :VimspectorReset<CR>

nmap <space>b <Plug>VimspectorToggleBreakpoint<CR>
nmap <space>dg <Plug>VimspectorGoToCurrentLine<CR>
nmap <space><F9> <Plug>VimspectorToggleConditionalBreakpoint<CR>

" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

]]

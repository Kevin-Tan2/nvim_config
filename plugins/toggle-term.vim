lua require("toggleterm").setup()

" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-a-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-A-T> will open terminal 2
nnoremap <silent><c-a-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-a-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>


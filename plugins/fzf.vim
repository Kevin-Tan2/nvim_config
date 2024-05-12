" To load the fuzzy finder
nnoremap <C-p> :Files<CR>
" To open the new file in horizontal press <C-x>
" To open the new file in vertcal press <C-v>
" To open the new file in the new window press <C-t>
" To find over buffer :Buffers

" After installing the silver search (equivalent to Ctrl+shift+f in vscode)
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <C-A-p> :Ag<CR>

" using Ctrl-/ to toggle the preview window
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   "rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>), 1,
  \   fzf#vim#with_preview('right', 'alt-/'), <bang>0)

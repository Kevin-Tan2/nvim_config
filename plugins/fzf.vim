" To load the fuzzy finder
nnoremap <C-p> :Files<CR>
" To open the new file in horizontal press <C-x>
" To open the new file in vertcal press <C-v>
" To open the new file in the new window press <C-t>
" To find over buffer :Buffers

" After installing the silver search (equivalent to Ctrl+shift+f in vscode)
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <C-A-p> :Ag<CR>


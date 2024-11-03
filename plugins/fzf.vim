" To load the fuzzy finder
nnoremap <leader>ff :Files<CR>
" To open the new file in horizontal press <C-x>
" To open the new file in vertcal press <C-v>
" To open the new file in the new window press <C-t>
" To find over buffer :Buffers

" After installing the silver search (equivalent to Ctrl+shift+f in vscode)
let g:ackprg = 'ag --nogroup --nocolor --column'
if has('win32')
  let g:fzf_vim = {}
  let g:fzf_vim.preview_bash = 'C:\Git\bin\bash.exe'
  let g:fzf_vim.preview_window = ['hidden,right,50%,<70(up,40%)', 'ctrl-/']
endif

nnoremap <leader>fr :Rg<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fh :History<CR>

" using Ctrl-/ to toggle the preview window
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   "rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>), 1,
  \   fzf#vim#with_preview('right', 'alt-/'), <bang>0)


anoremenu PopUp.Search\ Files :Files<CR>

" Glyph
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

let g:fern#renderer = "nerdfont"

" Devicon
set guifont=DroidSansMono\ Nerd\ Font\ 11

nmap <C-t> :Fern . -drawer<CR>

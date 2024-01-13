" Pre-Requisite
set nocompatible
filetype plugin on
syntax on

" Main Setup
"let wiki_1 = {'path': '~/personal_wiki/',
"      \ 'syntax': 'markdown', 'ext': '.md'} 
let learning_wiki = {}
let learning_wiki['path'] = '~/learning_wiki/'
let external_wiki = { 'path': '~/documents/degree/mathematics/', 
      \'ext': '.wiki' }

let g:vimwiki_list = [{}, learning_wiki, external_wiki]



let g:vimwiki_global_ext = 1


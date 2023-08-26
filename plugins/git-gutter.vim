g:gitgutter_max_signs = 500
g:gitgutter_sign_priority = 2


" If no GitGutter* highlight groups exist, the plugin will check the Diff* 
" highlight groups. If their foreground colours differ the plugin will use them; 
" if not, these colours will be used:
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

let g:gitgutter_sign_added = 'xx'
let g:gitgutter_sign_modified = 'yy'
let g:gitgutter_sign_removed = 'zz'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_removed_above_and_below = '{'
let g:gitgutter_sign_modified_removed = 'ww'

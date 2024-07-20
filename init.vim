" This is to reuse .vimrc (classic vim)
"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath=&runtimepath
"source ~/.vimrc

if has('win32')
  let prefix = "$HOME/AppData/Local/nvim"
else
  let prefix = "$HOME/.config/nvim"

endif

exec "source " . prefix . "/basic-settings.vim"
exec "source " . prefix . "/syntax/dts.vim"
exec "source " . prefix . "/fdetect/dts.vim"
exec "source " . prefix . "/fdetect/xaml.vim"
exec "source " . prefix . "/plugins.vim"
"exec "source " . prefix . "/plugins/nerdtree.vim"
exec "source " . prefix . "/plugins/fern.vim"
exec "source " . prefix . "/plugins/fzf.vim"
exec "source " . prefix . "/plugins/vimtex.vim"
exec "source " . prefix . "/plugins/visual-multi.vim"
"exec "source " . prefix . "/plugins/coc.vim"
"exec "source " . prefix . "/plugins/omnisharp.vim"
"exec "source " . prefix . "/plugins/omnisharp-extended.vim"
exec "source " . prefix . "/plugins/toggle-term.vim"
"exec "source " . prefix . "/plugins/magma.vim"
exec "source " . prefix . "/colorschemes/catppuccin.vim"
exec "source " . prefix . "/plugins/mason-lsp.vim"
"exec "source " . prefix . "/colorschemes/everforest.vim"
exec "source " . prefix . "/plugins/vimwiki.vim"
exec "source " . prefix . "/plugins/cmake.vim"
exec "source " . prefix . "/plugins/nvim_cmp.vim"


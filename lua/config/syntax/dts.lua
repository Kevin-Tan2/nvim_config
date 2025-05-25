
-- Vim syntax file
-- Language:	dts/dtsi (device tree files)
-- Maintainer:	Daniel Mack <vim@zonque.org>
-- Last Change:	2013 Oct 20

if vim.fn.exists("b:current_syntax") then
  return
end

vim.cmd('syntax region dtsComment        start="/\\*"  end="\\*/"')
vim.cmd('syntax match  dtsReference      "&[[:alpha:][:digit:]_]\\+"')
vim.cmd('syntax region dtsBinaryProperty start="\\[" end="\\]" ')
vim.cmd('syntax match  dtsStringProperty "\".*\""')
vim.cmd('syntax match  dtsKeyword        "/.\\{-1,\\}/"')
vim.cmd('syntax match  dtsLabel          "^[[:space:]]*[[:alpha:][:digit:]_]\\+:"')
vim.cmd('syntax match  dtsNode           /[[:alpha:][:digit:]-_]\\+\\(@[0-9a-fA-F]\\+\\|\\)[[:space:]]*{/he=e-1')
vim.cmd('syntax region dtsCellProperty   start="<" end=">" contains=dtsReference,dtsBinaryProperty,dtsStringProperty,dtsComment')
vim.cmd('syntax region dtsCommentInner   start="/\\*"  end="\\*/"')
vim.cmd('syntax match  dtsCommentLine    "//.*$"')

vim.cmd [[
hi def link dtsCellProperty     Number
hi def link dtsBinaryProperty   Number
hi def link dtsStringProperty   String
hi def link dtsKeyword          Include
hi def link dtsLabel            Label
hi def link dtsNode             Structure
hi def link dtsReference        Macro
hi def link dtsComment          Comment
hi def link dtsCommentInner     Comment 
hi def link dtsCommentLine      Comment
]]

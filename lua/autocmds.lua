-- Highlight on yank
vim.cmd [[autocmd TextYankPost * lua vim.highlight.on_yank {on_visual = true}]]

-- Hide lualine in nvitree buffer
vim.cmd [[autocmd BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif]]

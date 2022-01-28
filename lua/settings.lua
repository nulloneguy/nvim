local utils = require "utils"

-- Disable ~ character in empty lines
vim.cmd [[set fcs=eob:\ ]]

local indent = 4
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.cmd [[filetype plugin indent on]]
vim.cmd [[set noshowmode]]
vim.cmd [[
    set nobackup
    set noswapfile
]]

utils.opt("o", "guifont", "Liga SFMono Nerd Font:h11")
utils.opt("b", "expandtab", true)
utils.opt("o", "smarttab", true)
utils.opt("b", "shiftwidth", indent)
utils.opt("b", "smartindent", true)
utils.opt("b", "tabstop", indent)
utils.opt("o", "hidden", true)
utils.opt("o", "ignorecase", true)
utils.opt("o", "scrolloff", 5)
utils.opt("o", "shiftround", true)
utils.opt("o", "smartcase", true)
utils.opt("o", "splitbelow", true)
utils.opt("o", "splitright", true)
utils.opt("w", "number", true)
utils.opt("w", "relativenumber", false)
utils.opt("o", "clipboard", "unnamed,unnamedplus")
utils.opt("w", "cursorline", true)
utils.opt("o", "shiftround", true)
utils.opt("o", "shortmess", vim.o.shortmess .. "c")
utils.opt("o", "mouse", "a")
utils.opt("o", "cmdheight", 1)

-- Highlight on yank
vim.cmd "au TextYankPost * lua vim.highlight.on_yank {on_visual = true}"

vim.api.nvim_command [[autocmd FileType python,c,cpp,go,lua set sw=4 ]]
vim.api.nvim_command [[autocmd FileType python,c,cpp,go,lua set ts=4 ]]
vim.api.nvim_command [[autocmd FileType python,c,cpp,go,lua set sts=4 ]]

vim.api.nvim_command [[autocmd FileType javascript,vue set sw=2 ]]
vim.api.nvim_command [[autocmd FileType javascript,vue set ts=2 ]]
vim.api.nvim_command [[autocmd FileType javascript,vue set sts=2 ]]

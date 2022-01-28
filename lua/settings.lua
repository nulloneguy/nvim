local utils = require("utils")

vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.cmd([[set fcs=eob:\ ]])
vim.cmd([[filetype plugin indent on]])

local options = {
	fileencoding = "utf-8",
	backup = false,
	swapfile = false,
	hlsearch = true,
	showmode = false,
	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
	scrolloff = 8,
	sidescrolloff = 8,
	smartindent = true,
	signcolumn = "yes",
	hidden = true,
	ignorecase = true,
	timeoutlen = 1000,
	shiftround = true,
	smartcase = true,
	splitbelow = true,
	splitright = true,
	number = true,
	relativenumber = false,
	clipboard = "unnamed,unnamedplus",
	cursorline = true,
	mouse = "a",
	cmdheight = 1,
}

vim.opt.shortmess:append("c")

for key, value in pairs(options) do
	vim.opt[key] = value
end

utils.setSpacesSize({ javascript = 4, python = 4 })

vim.g.nvim_markdown_preview_format = "gfm"
vim.g.nvim_markdown_preview_theme = "github"

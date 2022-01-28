local _M = {}

_M.colors = {
	bg = "#1E2128",
	bg1 = "#3b4252",
	bg2 = "#262b36",
	bg3 = "#4c566a",
	fg = "#e5e9f0",
	fg1 = "#707788",
	red = "#bf616a",
	white = "#a5abb8",
	black = "#222733",
	orange = "#d08770",
	yellow = "#ebcb8b",
	blue = "#5e81ac",
	green = "#a3be8c",
	cyan = "#88c0d0",
	magenta = "#b48ead",
	pink = "#FFA19F",
}

_M.signs = { Error = "", Warn = "", Hint = "", Info = "" }

_M.powerline = {
	circle = {
		left = "",
		right = "",
	},
	arrow = {
		left = "",
		right = "",
	},
	triangle = {
		left = "",
		right = "",
	},
}

function _M.setSpacesSize(filetypes)
	for filetype, size in pairs(filetypes) do
		vim.cmd(string.format("autocmd FileType %s set sw=%s", filetype, size))
		vim.cmd(string.format("autocmd FileType %s set ts=%s", filetype, size))
		vim.cmd(string.format("autocmd FileType %s set sts=%s", filetype, size))
	end
end

return _M

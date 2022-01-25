local utils = {}

local scopes = { o = vim.o, b = vim.bo, w = vim.wo }

function utils.opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= "o" then
        scopes["o"][key] = value
    end
end

function utils.map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

utils.colors = {
    bg = "#12131B",
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

utils.signs = { Error = "", Warn = "", Hint = "", Info = "" }

utils.powerline = {
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

function utils.setupFrom(name)
    require("plugins.setup." .. name)
end

return utils

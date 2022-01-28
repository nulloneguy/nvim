local ok, lualine = pcall(require, "lualine")

if not ok then
    return
end

local colors = require("utils").colors
local powerline = require("utils").powerline.arrow

local mode_color = {
    n = colors.cyan,
    i = colors.green,
    v = colors.magenta,
    c = colors.red,
    no = colors.magenta,
    s = colors.orange,
    [""] = colors.orange,
    ic = colors.yellow,
    R = colors.magenta,
    Rv = colors.magenta,
    cv = colors.red,
    ce = colors.red,
    r = colors.cyan,
    rm = colors.cyan,
    ["r?"] = colors.cyan,
    ["!"] = colors.red,
    t = colors.red,
}

local conditions = {
    buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand "%:t") ~= 1
    end,
    hide_in_width = function()
        local squeeze_width = vim.fn.winwidth(0) / 2
        if squeeze_width > 60 then
            return true
        end
        return false
    end,
    check_git_workspace = function()
        local filepath = vim.fn.expand "%:p:h"
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
    end,
}

local config = {
    options = {
        component_separators = "",
        section_separators = "",
        theme = {
            normal = { c = { fg = colors.fg1, bg = colors.bg1 } },
            inactive = { c = { fg = colors.fg1, bg = colors.bg } },
        },
    },
    sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_v = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
    },
}

local function ins_left(component)
    table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
    table.insert(config.sections.lualine_x, component)
end

local function ins_left_inactive(component)
    table.insert(config.inactive_sections.lualine_c, component)
end

local function ins_right_inactive(component)
    table.insert(config.inactive_sections.lualine_x, component)
end

ins_left {
    function()
        vim.api.nvim_command("hi LualineViModeStart guibg=" .. mode_color[vim.fn.mode()])
        return " "
    end,
    color = "LualineViModeStart",
    padding = { right = 0 },
}

ins_left {
    function()
        vim.api.nvim_command(
            "hi LualineViMode guifg="
                .. mode_color[vim.fn.mode()]
                .. " guibg="
                .. colors.black
                .. " gui=bold cterm=bold"
        )
        return require("lualine.utils.mode").get_mode()
    end,
    icons_enabled = true,
    color = "LualineViMode",
    padding = { right = 1, left = 1 },
}

ins_left {
    function()
        return powerline.right
    end,
    color = { fg = colors.black, bg = colors.bg1 },
    padding = 0,
}

ins_left {
    "filetype",
    fmt = string.upper,
    cond = conditions.hide_in_width,
    icons_enabled = true,
    color = { fg = colors.fg1 },
}

ins_left {
    "filename",
    cond = conditions.buffer_not_empty or conditions.hide_in_width,
    color = { fg = colors.magenta, gui = "bold" },
}

ins_left {
    "filesize",
    icon = "",
    cond = conditions.buffer_not_empty and conditions.hide_in_width,
    color = { fg = colors.fg1 },
}

ins_left { "location", color = { fg = colors.fg1 }, cond = conditions.hide_in_width }

ins_left { "progress", color = { fg = colors.fg1, gui = "bold" }, cond = conditions.hide_in_width }

ins_left {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    symbols = { error = " ", warn = " ", info = " " },
    cond = conditions.hide_in_width,
    diagnostics_color = {
        color_error = { fg = colors.red },
        color_warn = { fg = colors.yellow },
        color_info = { fg = colors.cyan },
    },
}

ins_left {
    function()
        return "%="
    end,
}

ins_left {
    function()
        local msg = "No Active Lsp"
        local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then
            return msg
        end
        for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 and client.name ~= "null-ls" then
                return client.name
            end
        end
        return msg
    end,
    icon = " ",
    color = { fg = colors.green, gui = "bold" },
}

-- Add components to right sections
ins_right {
    "o:encoding",
    fmt = string.upper,
    cond = conditions.hide_in_width,
    color = { fg = colors.fg1 },
}

ins_right {
    "fileformat",
    fmt = string.upper,
    cond = conditions.hide_in_width,
    icons_enabled = true,
    color = { fg = colors.fg1 },
}

ins_right {
    function()
        return vim.opt.tabstop:get()
    end,
    icon = "",
    color = { fg = colors.fg1 },
}

ins_right {
    function()
        return powerline.left
    end,
    color = { fg = colors.black, bg = colors.bg1 },
    cond = conditions.check_git_workspace,
    padding = 0,
}

ins_right {
    "branch",
    icon = "",
    cond = conditions.check_git_workspace,
    color = { fg = colors.magenta, bg = colors.black, gui = "bold" },
}

ins_right {
    "diff",
    symbols = { added = " ", modified = " ", removed = " " },
    diff_color = {
        added = { fg = colors.green, bg = colors.black },
        modified = { fg = colors.orange, bg = colors.black },
        removed = { fg = colors.red, bg = colors.black },
    },
}

ins_right {
    function()
        vim.api.nvim_command("hi LualineViModeEnd guibg=" .. mode_color[vim.fn.mode()])
        return " "
    end,
    color = "LualineViModeEnd",
    padding = { right = 0 },
}

-- Inactive
ins_left_inactive {
    function()
        return " "
    end,
    color = { bg = colors.fg1 },
    padding = { right = 0 },
}

ins_left_inactive {
    "filename",
    cond = conditions.buffer_not_empty,
    color = { fg = colors.fg1, bg = colors.black, gui = "bold" },
}

ins_left_inactive {
    function()
        return powerline.right
    end,
    color = { fg = colors.black, bg = colors.bg },
    padding = 0,
}

lualine.setup(config)

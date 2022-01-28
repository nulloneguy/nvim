local ok, onenord = pcall(require, "onenord")

if not ok then
    return
end

local colors = require("utils").colors

onenord.setup {
    borders = true,
    fade_nc = false,
    italics = {
        comments = true,
        strings = true,
        keywords = false,
        functions = false,
        variables = false,
    },
    disable = {
        background = true,
        cursorline = false,
        eob_lines = true,
    },
    custom_highlights = {
        NvimTreeNormal = { fg = colors.fg, bg = colors.bg },
        WhichKeyFloat = { bg = colors.bg2 },
    },
}

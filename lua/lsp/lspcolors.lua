local ok, lspcolors = pcall(require, "lsp-colors")

if not ok then
    return
end

local colors = require "utils"

lspcolors.setup {
    Error = colors.red,
    Warning = colors.yellow,
    Information = colors.blue,
    Hint = colors.cyan,
}

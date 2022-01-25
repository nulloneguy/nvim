local ok, treesitter = pcall(require, "nvim-treesitter.configs")

if ok then
    treesitter.setup {
        autotag = {
            enable = true,
        },
        highlight = {
            enable = true,
        },
    }
end

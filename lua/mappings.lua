local ok, wk = pcall(require, "which-key")

if not ok then
    return
end

wk.register {
    -- [bufferline] Moving arround buffer tab
    ["<a-.>"] = { "<cmd>BufferLineCycleNext<cr>", "Go next buffer" },
    ["<a-,>"] = { "<cmd>BufferLineCyclePrev<cr>", "Go previous buffer" },
    ["<a-q>"] = { "<cmd>bdelete<cr>", "Close current buffer" },
    ["<a-Q>"] = { "<cmd>bufdo bd<cr>", "Close current buffer" },

    -- [nvim-tree]
    ["<c-n>"] = { "<cmd>NvimTreeToggle<cr>", "[nvimtree] Toggle" },
    ["<leader>r"] = { "<cmd>NvimTreeRefresh<cr>", "[nvimtree] Refresh" },

    -- [Telescope]
    ["<leader>f"] = {
        name = "+file",
        f = { "<cmd>Telescope find_files<cr>", "[Telescope] Find File" },
        g = { "<cmd>Telescope live_grep<cr>", "[Telescope] Find File by grep" },
        b = { "<cmd>Telescope buffers<cr>", "[Telescope] Find buffers" },
        h = { "<cmd>Telescope help_tags<cr>", "[Telescope] Help tags" },
        m = { "<cmd>Telescope marks<cr>", "[Telescope] Marks" },
    },

    -- [Trouble.nvim]
    ["<leader>x"] = {
        x = { "<cmd>Trouble<cr>", "[Trouble] Show trouble list" },
        w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "[Trouble] Show LSP workspace diagnostic" },
        d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "[Trouble] Show LSP Document diagnostic" },
        l = { "<cmd>Trouble loclist<cr>", "[Trouble] Locklist" },
        q = { "<cmd>Trouble quickfix<cr>", "[Trouble] Quick fix" },
    },
    ["gR"] = { "<cmd>Trouble lsp_references<cr>", "[Trouble] References" },

    -- [Vista.vim] ctags
    ["<leader>v"] = { "<cmd>Vista!!<cr>", "[Vista] Show" },

    -- [symbols-outline.nvim] A tree like view for symbols
    ["<leader>s"] = { "<cmd>SymbolsOutline<cr>", "[Symbol Outline] Show" },
    -- [TrueZen] Toggle Zenmode
    ["<leader>z"] = { "<cmd>TZAtaraxis<cr>", "[ZenMode] Toggle" },

    -- [lspsaga]
    ["<leader>ls"] = {
        n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "[SAGA] Diagnostic jump next" },
        p = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "[SAGA] Diagnostic jump previous" },
        d = { "<cmd>Lspsaga preview_definition<cr>", "[SAGA] Preview definition" },
        f = { "<cmd>Lspsaga lsp_finder<cr>", "[SAGA] LSP Finder" },
        c = { "<cmd>Lspsaga code_action<cr>", "[SAGA] Code Action" },
    },
    ["<leader>rn"] = { "<cmd>Lspsaga rename<cr>", "[SAGA] Rename" },
}
wk.setup {}

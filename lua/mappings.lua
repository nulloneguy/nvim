local utils = require "utils"
local map = utils.map

-- [bufferline] Moving arround buffer tab
map("", "<a-.>", "<cmd>BufferLineCycleNext<cr>", { silent = true }) -- Move to next buffer
map("", "<a-,>", "<cmd>BufferLineCyclePrev<cr>", { silent = true }) -- Move to prev buffer
map("", "<a-q>", "<cmd>bdelete<cr>", { silent = true }) -- Close current buffer
map("", "<a-Q>", "<cmd>bufdo bd<cr>", { silent = true }) -- Close all buffers

-- [nvim-tree]
map("n", "<c-n>", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>r", "<cmd>NvimTreeRefresh<cr>")

-- [Telescope]
map("", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("", "<leader>fg", "<cmd>Telescope live_grep<cr>")
map("", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("", "<leader>fh", "<cmd>Telescope help_tags<cr>")
map("", "<leader>fm", "<cmd>Telescope marks<cr>")

-- [dashboard.nvim]
map("", "<leader>fn", "<cmd>DashboardNewFile<cr>")

-- [Trouble.nvim]
map("n", "<leader>xx", "<cmd>Trouble<cr>", { silent = true, noremap = true })
map("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", { silent = true, noremap = true })
map("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", { silent = true, noremap = true })
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>", { silent = true, noremap = true })
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
map("n", "gR", "<cmd>Trouble lsp_references<cr>", { silent = true, noremap = true })

-- [Vista.vim] ctags
map("n", "<leader>v", "<cmd>Vista!!<cr>", { silent = true, noremap = true })

-- [symbols-outline.nvim] A tree like view for symbols
map("n", "<leader>s", "<cmd>SymbolsOutline<cr>", { silent = true, noremap = true })

-- [Format current buffer]
map("n", "<leader>fm", "<cmd>Format<cr>", { silent = true, noremap = true })

-- [normal saving]
map("n", "<c-s>", "<cmd>w<cr>", { silent = true, noremap = true })
map("i", "<c-s>", "<cmd>w<cr>", { silent = true, noremap = true })

-- [Reset highlighting search]
map("n", "<esc>", "<cmd>noh<cr>", { silent = true, noremap = true })

-- [lspsaga]
-- map("n", "<leader>lsn", "<cmd>Lspsaga diagnostic_jump_next<cr>", { silent = true, noremap = true })
-- map("n", "<leader>lsp", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { silent = true, noremap = true })
-- map("n", "<leader>lsd", "<cmd>Lspsaga preview_definition<cr>", { silent = true, noremap = true })
-- map("n", "<leader>lsf", "<cmd>Lspsaga lsp_finder<cr>", { silent = true, noremap = true })
-- map("n", "<leader>lsr", "<cmd>Lspsaga rename<cr>", { silent = true, noremap = true })
-- map("n", "<leader>lsc", "<cmd>Lspsaga code_action<cr>", { silent = true, noremap = true })

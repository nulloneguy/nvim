local ok, packer = pcall(require, "plugins.packerInit")
local setupFrom = require("utils").setupFrom

if ok then
    local use = packer.use

    return packer.startup(function()
        use { "wbthomason/packer.nvim" }
        -- UI (Color, statusline, dashboard...)
        use { "rmehri01/onenord.nvim" }

        use { "kyazdani42/nvim-web-devicons", config = setupFrom "icons" }
        use {
            "glepnir/galaxyline.nvim",
            branch = "main",
            config = setupFrom "galaxyline",
            requires = { "kyazdani42/nvim-web-devicons" },
        }
        use {
            "glepnir/dashboard-nvim",
            config = setupFrom "dashboard",
        }
        use {
            "akinsho/bufferline.nvim",
            requires = { "kyazdani42/nvim-web-devicons" },
            config = setupFrom "bufferline",
        }

        -- Coding utilities
        use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = setupFrom "treesitter" }
        use { "windwp/nvim-ts-autotag" }
        use {
            "kyazdani42/nvim-tree.lua",
            requires = {
                "kyazdani42/nvim-web-devicons",
            },
            config = setupFrom "nvimtree",
        }
        use {
            "nvim-telescope/telescope.nvim",
            requires = { "nvim-lua/plenary.nvim" },
            config = setupFrom "telescope",
        }
        use { "blackCauldron7/surround.nvim", config = setupFrom "surround" }
        use { "lukas-reineke/indent-blankline.nvim", config = setupFrom "indent" }
        use { "akinsho/toggleterm.nvim", config = setupFrom "toggleterm" }
        use { "windwp/nvim-autopairs", config = setupFrom "autopairs" }
        use { "norcalli/nvim-colorizer.lua" }
        use { "karb94/neoscroll.nvim", config = setupFrom "neoscroll" }
        use { "liuchengxu/vista.vim" }
        use { "simrat39/symbols-outline.nvim" }

        -- LSP
        use { "neovim/nvim-lspconfig" }
        use { "williamboman/nvim-lsp-installer" }

        -- -- Lint
        use { "folke/lsp-colors.nvim" }
        use { "tami5/lspsaga.nvim" }
        use { "folke/trouble.nvim" }
        use { "ray-x/lsp_signature.nvim", branch = "neovim-0.6" }

        -- -- Comment
        use { "numToStr/Comment.nvim", config = setupFrom "comment" }

        -- -- Completion
        use { "hrsh7th/nvim-cmp" }
        use { "hrsh7th/cmp-nvim-lsp" }
        use { "hrsh7th/cmp-nvim-lua" }
        use { "hrsh7th/cmp-buffer" }
        use { "hrsh7th/cmp-path" }
        use { "hrsh7th/cmp-cmdline" }
        use { "hrsh7th/cmp-nvim-lsp-document-symbol" }
        use { "L3MON4D3/LuaSnip" }
        use { "saadparwaiz1/cmp_luasnip" }

        -- -- Formatter
        use { "mhartington/formatter.nvim" }

        -- Tmux
        -- use { "aserowy/tmux.nvim", config = setupFrom "tmux" }

        -- Git
        use {
            "lewis6991/gitsigns.nvim",
            requires = {
                "nvim-lua/plenary.nvim",
            },
            config = setupFrom "gitsigns",
        }
    end)
end

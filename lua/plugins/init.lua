local packer = require "plugins.packerInit"
local use = packer.use

return packer.startup(function()
    use { "wbthomason/packer.nvim" }

    -- UI (Color, statusline, dashboard...)
    use { "rmehri01/onenord.nvim" }
    use { "kyazdani42/nvim-web-devicons", config = require "plugins.configs.icons" }
    use {
        "nvim-lualine/lualine.nvim",
        config = require "plugins.configs.lualine",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    }
    use {
        "goolord/alpha-nvim",
        config = require "plugins.configs.alpha",
    }
    use {
        "akinsho/bufferline.nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
        config = require "plugins.configs.bufferline",
    }
    use { "folke/which-key.nvim" }

    use { "Pocco81/TrueZen.nvim" }

    -- Coding utilities
    use { "nvim-treesitter/nvim-treesitter", config = require "plugins.configs.treesitter" }
    use { "p00f/nvim-ts-rainbow" }
    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons",
        },
        config = require "plugins.configs.nvimtree",
    }
    use {
        "nvim-telescope/telescope.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = require "plugins.configs.telescope",
    }
    use { "blackCauldron7/surround.nvim", config = require "plugins.configs.surround" }
    use { "lukas-reineke/indent-blankline.nvim", config = require "plugins.configs.indent" }
    use { "akinsho/toggleterm.nvim", config = require "plugins.configs.toggleterm" }
    use { "windwp/nvim-autopairs", config = require "plugins.configs.autopairs" }
    use { "norcalli/nvim-colorizer.lua" }
    use { "karb94/neoscroll.nvim", config = require "plugins.configs.neoscroll" }

    -- LSP
    use { "neovim/nvim-lspconfig" }
    use { "williamboman/nvim-lsp-installer" }

    -- -- Lint
    use { "folke/lsp-colors.nvim" }
    use { "tami5/lspsaga.nvim" }
    use { "folke/trouble.nvim" }
    use { "ray-x/lsp_signature.nvim", branch = "neovim-0.6" }

    -- -- Comment
    use { "numToStr/Comment.nvim", config = require "plugins.configs.comment" }

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
    use { "hrsh7th/cmp-calc" }

    -- -- Formatter and Linting
    use {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("null-ls").setup()
        end,
        requires = { "nvim-lua/plenary.nvim" },
    }

    -- Tmux
    use { "aserowy/tmux.nvim", config = require "plugins.configs.tmux" }

    -- Git
    use {
        "lewis6991/gitsigns.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
        },
        config = require "plugins.configs.gitsigns",
    }

    -- Markdown
    use { "davidgranstrom/nvim-markdown-preview" }
end)

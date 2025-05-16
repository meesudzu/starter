return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
        require "configs.lspconfig"
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        config = function()
        require("nvim-tree").setup()
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "python",
                "ansible",
                "terraform",
                "yaml",
            },
        },
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "ansible-language-server",
                "ansible-lint",
                "stylua",
                "prettier",
                "pyre",
                "bash-language-server",
                "beautysh",
                "shfmt",
                "terraform-ls",
                "yaml-language-server",
                "yamlfmt",
                "yamllint",
            },
        },
    },
}

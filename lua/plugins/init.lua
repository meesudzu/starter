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

        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                require("nvim-tree.api").tree.open()
            end,
        })

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
                "shellcheck",
                "terraform-ls",
                "yaml-language-server",
                "yamlfmt",
                "yamllint",
                "autoflake",
                "autopep8",
                "basic-language-server",
                "brunette",
                "dockerfile-language-server",
                "dot-language-server",
                "dotenv-linter",
                "editorconfig-checker",
                "fixjson",
                "gitui",
                "jinja-lsp",
                "json-lsp",
                "kube-linter",
                "luaformatter",
                "luacheck",
                "nginx-language-server",
                "tflint"
            },
        },
    },
}

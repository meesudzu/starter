require("nvchad.configs.lspconfig").defaults()

local servers = {
    "pyre",
    "ansible-language-server",
    "lua-language-server",
    "bash-language-server",
    "terraform-ls",
    "yaml-language-server",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

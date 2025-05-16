require("nvchad.configs.lspconfig").defaults()

local servers = {
    "pyre",
    "ansible-language-server",
    "lua-language-server",
    "bash-language-server",
    "terraform-ls",
    "yaml-language-server",
    "basic-language-server",
    "dockerfile-language-server",
    "dot-language-server",
    "jinja-lsp",
    "json-lsp",
    "nginx-language-server",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

local options = {
    formatters_by_ft = {
        lua = {
            "stylua",
            "beautysh",
            "shfmt",
            "yamlfmt",
        },
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options

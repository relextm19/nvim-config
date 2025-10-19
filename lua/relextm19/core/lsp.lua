-- Enable LSP servers
vim.lsp.enable({ "gopls", "lua_ls", "ts_ls", "vtsls" })
vim.lsp.enable("vue_ls")

-- Diagnostics setup
vim.diagnostic.config({
    underline = true,
    virtual_text = {
        prefix = "",             -- no arrow or symbol before text
        spacing = 4,             -- a bit of space from the code
        source = "if_many",      -- show the source if multiple LSPs
        format = function(diagnostic)
            return diagnostic.message -- just the message at end of line
        end,
    },
    update_in_insert = false,
    severity_sort = true,
    float = { border = "rounded", source = true },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})

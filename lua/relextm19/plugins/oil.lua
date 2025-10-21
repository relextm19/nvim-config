return {
    {
        "stevearc/oil.nvim",
        opts = {
            show_hidden = true,

            view_options = {
                show_hidden = true,  -- allow dotfiles to appear
                is_hidden_file = function(name, bufnr)
                    return false    -- don’t hide any file, including .gitignore
                end,
            },
        },
        dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        lazy = false,
    }
}

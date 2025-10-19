return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "lua", "go", "python", "javascript", "typescript" }, -- languages you want
      highlight = {
        enable = true,
        additional_vim_regex_highlightinn = false,
      },
      indent = {
        enable = true,
      },
    }
  end,
}

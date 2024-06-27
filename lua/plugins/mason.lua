return {
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "simrat39/rust-tools.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
          },
        },
      })
      require("mason-lspconfig").setup({
        ensure_installed = { "lua.ls", "rust-analyzer" },
      })
    end,
  },
}
--return {
--  {
--    "stevearc/oil.nvim",
--    opts = {},
--    dependencies = { "nvim-tree/nvim-web-devicons" },
--    config = function()
--      require("oil").setup({
--        default_file_explorer = true,
--      })
--    end,
--  },
--}

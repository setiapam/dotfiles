local lsp_bin = vim.fn.executable("laravel-lsp") == 1 and "laravel-lsp"
  or vim.fn.expand("~/.config/composer/vendor/bin/laravel-lsp")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        laravel_lsp = {
          cmd = { lsp_bin },
          filetypes = { "php", "blade" },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("artisan", "composer.json", ".git")(fname)
          end,
        },
      },
    },
  },
}

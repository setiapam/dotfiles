return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        blade = { "blade-formatter" },
        php = { "pint" },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "blade-formatter", "pint" })
    end,
  },
}

return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.pickers = opts.pickers or {}
    opts.pickers.find_files = {
      hidden = true,
      no_ignore = true,
    }
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
    })
  end,
}

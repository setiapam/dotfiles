-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Indentasi 2 spasi untuk Frontend
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "javascript",
    "typescript",
    "vue",
    "json",
    "javascriptreact",
    "typescriptreact",
  },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end,
})

-- Format komentar khusus Blade template
vim.api.nvim_create_autocmd("FileType", {
  pattern = "blade",
  callback = function()
    vim.bo.commentstring = "{{-- %s --}}"
  end,
})

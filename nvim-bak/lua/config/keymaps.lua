-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>r", function()
  local find = vim.fn.input("Find: ")
  if find == "" then
    return
  end
  local replace = vim.fn.input("Replace with: ")
  vim.cmd(":%s/" .. find .. "/" .. replace .. "/gc")
end, { desc = "Find and Replace in Buffer (Confirm)" })

vim.keymap.set(
  "n",
  "<leader>rw",
  [[:.,$s/\<<C-r><C-w>\>//gc<Left><Left><Left>]],
  { desc = "Replace Word Next (Cursor Down)" }
)

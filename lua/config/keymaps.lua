-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n", "<leader>w",
  function ()
    vim.cmd("write")
  end,
  {
    desc = "Save File",
    silent = true
  }
)

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.del("n", "<leader>wd")
vim.keymap.del("n", "<leader>wm")

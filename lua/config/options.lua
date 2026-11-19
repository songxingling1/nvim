-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.o
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.wrap = true
opt.linebreak = true
opt.breakindent = true
opt.spelllang = ""
vim.g.clipboard = "osc52"
vim.g.lazyvim_blink_main = true
vim.g.trouble_lualine = false
vim.g.lazydev_enabled = false

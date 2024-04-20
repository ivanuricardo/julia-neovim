-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.signcolumn = "yes" -- Automatically adjust sign column
opt.scrolloff = 7 -- Lines of context
opt.wrap = true -- Disable line wrap
opt.shiftwidth = 4 -- Size of indent
opt.colorcolumn = "80" -- Line length marker

vim.o.list = true

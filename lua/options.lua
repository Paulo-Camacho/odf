require "nvchad.options"

local o = vim.o
-- Enable relative line numbers and absolute for current line
o.relativenumber = true
o.number = true
o.wrap = true
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4
o.tabstop = 4

-- Highlight yanked text
vim.api.nvim_exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})
  augroup END
]], false)

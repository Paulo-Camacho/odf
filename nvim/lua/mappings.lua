require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")


map("n", "<leader>o", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })


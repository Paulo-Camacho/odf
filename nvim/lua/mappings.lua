require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kk", "<ESC>")
map("i", "jj", "<ESC>")

map("n", "<leader>o", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>pd", "<cmd>pu=strftime('%c')<cr>", { desc = "Pasting today's date" })

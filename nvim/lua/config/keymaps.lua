local map = vim.keymap.set
local api = vim.api.nvim_set_keymap

--Buffers --
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")
map("n", "<leader>q", ":BufferClose<CR>")
map("n", "<leader>Q", ":BufferClose!<CR>")
map("n", "<leader>U", "::bufdo bd<CR>") --close all
map('n', '<leader>vs', ':vsplit<CR>:bnext<CR>') --ver split + open next buffer
map('n', '<leader>S', ':ls<CR>') --ver split + open next buffer


-- Pastes the current date --
map("n", "<leader>pd", "<cmd>pu=strftime('%c')<cr>", { desc = "Pasting today's date" })


-- Oil -- 
map("n", "-", "<CMD>Oil<CR>", { desc = "Open current directory with Oil"})


-- Telescope -- 

map("n", "<leader>b", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>o", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = "telescope find all files" }
)
-- Interesting
api('n', '<leader>h', '<cmd>lua require("telescope.builtin").live_grep({ search_dirs = { "~" } })<CR>', { noremap = true, silent = true })
api('n', '<leader>sr', '<cmd>lua require("telescope.builtin").live_grep({ search_dirs = { "/" } })<CR>', { noremap = true, silent = true })


map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })

-- Some awesome movements --
map("v", "J", ":m '>+1<CR>gv=gv") -- Shift visual selected line down
map("v", "K", ":m '<-2<CR>gv=gv") -- Shift visual selected line up


-- Comments --
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })


-- Quality of life --
map("i", "kk", "<ESC>")
map("i", "kj", "<ESC>")
map("i", "jj", "<ESC>")
map("n", ";", ":", { desc = "CMD enter command mode" })

map("t", "kk", "<ESC>")
map("t", "kj", "<ESC>")
map("t", "jj", "<ESC>")
map("t", ";", ":", { desc = "CMD enter command mode" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- Terminal --
map('t', '<Esc>', '<C-\\><C-n>', { desc = "Escape terminal mode" })

-- Easily navigate terminal splits
map('t', '<C-h>', '<C-\\><C-n><C-w>h', { desc = "Move left from terminal" })
map('t', '<C-j>', '<C-\\><C-n><C-w>j', { desc = "Move down from terminal" })
map('t', '<C-k>', '<C-\\><C-n><C-w>k', { desc = "Move up from terminal" })
map('t', '<C-l>', '<C-\\><C-n><C-w>l', { desc = "Move right from terminal" })

-- Open a terminal quickly
map('n', '<Leader>tt', ':term<CR>', { desc = "Open terminal" })

-- Close terminal buffer
map('t', '<Leader>tc', '<C-\\><C-n>:bd!<CR>', { desc = "Close terminal buffer" })

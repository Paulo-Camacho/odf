-- Use `:h <option>` to figure out the meaning if needed
-- vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- API
vim.api.nvim_create_autocmd('TextYankPost', 
{
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',  
            timeout = 250,          -- Duration in milliseconds
            on_visual = true,       -- Highlight in visual mode as well
        })
    end,
})


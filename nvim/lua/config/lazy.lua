-- Bootstrapping: Ensure `lazy.nvim` is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then -- If lazy.nvim isn't already installed, this will clone the repo
    print("Installing lazy.nvim...")
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none", -- Optimize clone by excluding unnecessary files
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end

-- Add lazy.nvim to the runtime path (rtp)
vim.opt.rtp:prepend(lazypath)

-- Setup `lazy.nvim` with plugins and configurations
require("lazy").setup({

    -- Theme
    {
        "dgox16/oldworld.nvim",
        lazy = false,
        priority = 1000,
        opts = {},               -- No additional options needed for this theme
        config = function()
            -- Apply the ashen colorscheme once the plugin is loaded
            vim.cmd("colorscheme oldworld")
        end,
    },
    {
        'goolord/alpha-nvim',
        config = function()
            local alpha = require('alpha')
            local dashboard = require('alpha.themes.dashboard')

            -- Modify the dashboard header (logo)
            dashboard.section.header.val = 
            {
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "██████╗  █████╗ ██╗   ██╗██╗     ██╗    ██╗██╗████████╗██╗  ██╗███╗   ██╗ ██████╗ ",
                "██╔══██╗██╔══██╗██║   ██║██║     ██║    ██║██║╚══██╔══╝██║  ██║████╗  ██║██╔═══██╗",
                "██████╔╝███████║██║   ██║██║     ██║ █╗ ██║██║   ██║   ███████║██╔██╗ ██║██║   ██║",
                "██╔═══╝ ██╔══██║██║   ██║██║     ██║███╗██║██║   ██║   ██╔══██║██║╚██╗██║██║   ██║",
                "██║     ██║  ██║╚██████╔╝███████╗╚███╔███╔╝██║   ██║   ██║  ██║██║ ╚████║╚██████╔╝",
                "╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝ ╚══╝╚══╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ",
            }

            dashboard.section.header.opts.hl = 'Type'  -- Change highlight style if desired
            dashboard.section.buttons.val = {
                dashboard.button('f', '  Explore', ':Ex<CR> '),
                dashboard.button('e',  '  Search',      ':e '),
                dashboard.button('q',    '  Quit',  ':qa<CR>'),
                dashboard.button('h',    '  Help',      ':h '),
            }
            alpha.setup(dashboard.config)
        end
    },
})































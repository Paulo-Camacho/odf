-- Bootstrapping: Ensure `lazy.nvim` is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    -- If lazy.nvim isn't already installed, this will clone the repo
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

    -- Theme plugin: Ashen colorscheme
    {
        "ficcdaf/ashen.nvim",   -- Specify the theme plugin
        lazy = false,            -- Load it immediately (since you want the theme to be set at startup)
        priority = 1000,         -- High priority to ensure it's loaded first
        opts = {},               -- No additional options needed for this theme
        config = function()
            -- Apply the ashen colorscheme once the plugin is loaded
            vim.cmd("colorscheme ashen")
        end,
    },

    -- Tree-sitter for syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",  -- Tree-sitter plugin for enhanced syntax highlighting
        build = ":TSUpdate",               -- Automatically update parsers for supported languages
        event = { "BufReadPost", "BufNewFile" },  -- Lazy-load on buffer read or creation
        opts = {
            -- Specify which languages to install parsers for
            ensure_installed = { "cpp", "lua", "python", "json" }, 
            highlight = { enable = true },    -- Enable syntax highlighting
        },
    },

    -- Automatically detect and manage projects
    {
        "ahmedkhalf/project.nvim",           -- Plugin to manage projects based on patterns and LSP
        event = "VeryLazy",                   -- Lazy-load on very first idle state
        config = function()
            -- Configure project detection settings (using .git, Makefile, CMakeLists.txt, or compile_commands.json)
            require("project_nvim").setup({
                detection_methods = { "pattern", "lsp" },  -- Use file patterns or LSP to detect projects
                patterns = { ".git", "Makefile", "CMakeLists.txt", "compile_commands.json" },
            })
        end,
    },
})

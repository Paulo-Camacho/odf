local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "git@github.com:folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "git@github.com:tanvirtin/monokai.nvim.git",
    "git@github.com:catppuccin/nvim.git", -- Note: fixed the typo in 'catppuccin'

    "git@github.com:folke/tokyonight.nvim.git",

    "git@github.com:williamboman/mason.nvim.git",
    "git@github.com:williamboman/mason-lspconfig.nvim.git",
    "git@github.com:neovim/nvim-lspconfig.git",

    {
        "git@github.com:onsails/lspkind.nvim.git",
        event = { "VimEnter" },
    },
    -- Auto-completion engine
    {
        "git@github.com:hrsh7th/nvim-cmp.git",
        dependencies = {
            "git@github.com:onsails/lspkind.nvim.git",
            "git@github.com:hrsh7th/cmp-nvim-lsp.git", -- lsp auto-completion
            "git@github.com:hrsh7th/cmp-buffer.git", -- buffer auto-completion
            "git@github.com:hrsh7th/cmp-path.git", -- path auto-completion
            "git@github.com:hrsh7th/cmp-cmdline.git", -- cmdline auto-completion
        },
        config = function()
            require("config.nvim-cmp")
        end,
    },
    -- Code snippet engine
    {
        "git@github.com:L3MON4D3/LuaSnip.git",
        version = "v2.*",
    },
})

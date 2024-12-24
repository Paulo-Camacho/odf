return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Choose between latte, frappe, macchiato, or mocha
        transparent_background = false, -- Set to true if you want a transparent background
        term_colors = true,
        integrations = {
          treesitter = true,
          lsp_trouble = true,
          nvimtree = true,
          telescope = true,
          gitsigns = true,
          cmp = true,
          which_key = true,
          mason = true,
          dap = true,
          native_lsp = {
            enabled = true,
            virtual_text = { errors = { "italic" }, hints = { "italic" }, warnings = { "italic" }, information = { "italic" } },
            underlines = { errors = { "underline" }, hints = { "underline" }, warnings = { "underline" }, information = { "underline" } },
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

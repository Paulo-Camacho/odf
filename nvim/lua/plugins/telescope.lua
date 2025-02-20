return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    opts = function()
        local telescope = require("telescope")
        telescope.setup({
            defaults = {
                prompt_prefix = "   ",
                selection_caret = " ",
                entry_prefix = " ",
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = {
                    horizontal = {
                        prompt_position = "bottom",
                        preview_width = 0.7, -- Preview window takes 80% of the space
                        results_width = 0.6, -- Results window takes 20% of the space
                    },
                    width = 0.95, -- Overall width of the Telescope window
                    height = 0.85, -- Overall height of the Telescope window
                },
                mappings = {
                    n = { ["q"] = require("telescope.actions").close },
                },
            },
        })
    end,
}

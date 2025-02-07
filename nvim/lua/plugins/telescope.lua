return 
{
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
            sorting_strategy = "descending",
            layout_config = 
            {
                horizontal =
                {
                    prompt_position = "bottom",
                    preview_width = 0.65,
                    },
                    width = 0.87,
                    height = 0.80,
                },
                mappings = {
                    n = { ["q"] = require("telescope.actions").close },
                },
            },
        })
    end,	
}

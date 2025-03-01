return { -- This theme is sweet!
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("cyberdream").setup({
                variant = "auto",
                transparent = true,
                italic_comments = true,
                hide_fillchars = true,
                cache = true,
                borderless_pickers = true, -- makes telescope look likes nvchad's
                overrides = function(c)
                    return {
                        CursorLine = { bg = c.bg },
                        CursorLineNr = { fg = c.magenta },
                    }
                end,
            })
            vim.cmd([[colorscheme cyberdream]])
        end,
    },

    -- return {
    -- 	-- the colorscheme should be available when starting Neovim
    -- 	{
    -- 		"iagorrr/noctishc.nvim",
    -- 		lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- 		priority = 1000, -- make sure to load this before all the other start plugins
    -- 		config = function()
    -- 			-- load the colorscheme here
    -- 			vim.cmd([[colorscheme noctishc]])
    --
    -- vim.cmd([[
    -- 				hi Normal guibg=NONE ctermbg=NONE
    -- 				hi NormalNC guibg=NONE ctermbg=NONE
    -- 				hi LineNr guibg=NONE ctermbg=NONE
    -- 				hi SignColumn guibg=NONE ctermbg=NONE
    -- 				hi Folded guibg=NONE ctermbg=NONE
    -- 				hi NonText guibg=NONE ctermbg=NONE
    -- 				hi VertSplit guibg=NONE ctermbg=NONE
    -- 				hi EndOfBuffer guibg=NONE ctermbg=NONE
    -- 			]])
    -- 		end,
    -- 	},
    --
    -- }
}

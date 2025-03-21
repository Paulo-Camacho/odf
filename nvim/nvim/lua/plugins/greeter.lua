return 
{
    {
        "goolord/alpha-nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local startify = require("alpha.themes.startify") require("alpha").setup(startify.config)
            startify.file_icons.provider = "devicons"
            startify.section.header.val = {
                    "",
                    "",
                    "",
                    "██╗  ██╗███████╗██╗     ██╗      ██████╗    ██████╗  █████╗ ██╗   ██╗██╗      ██████╗ ",
                    "██║  ██║██╔════╝██║     ██║     ██╔═══██╗   ██╔══██╗██╔══██╗██║   ██║██║     ██╔═══██╗",
                    "███████║█████╗  ██║     ██║     ██║   ██║   ██████╔╝███████║██║   ██║██║     ██║   ██║",
                    "██╔══██║██╔══╝  ██║     ██║     ██║   ██║   ██╔═══╝ ██╔══██║██║   ██║██║     ██║   ██║",
                    "██║  ██║███████╗███████╗███████╗╚██████╔╝   ██║     ██║  ██║╚██████╔╝███████╗╚██████╔╝",
                    "╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝ ╚═════╝ ",
            }

        end,
    },	
}



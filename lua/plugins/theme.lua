return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            local CONFIG = require("global_config")
            local FLAVOR = CONFIG.themes["catppuccin"].flavor
            require("catppuccin").setup({
                flavour = FLAVOR,
                background = {
                    light = "latte",
                    dark = FLAVOR,
                },
            })
            if CONFIG.global_theme == "catppuccin" then vim.cmd.colorscheme("catppuccin") end
        end
    },

    {
        "rebelot/kanagawa.nvim",
        config = function()
            local CONFIG = require("global_config")
            local FLAVOR = CONFIG.themes["kanagawa"].flavor
            if CONFIG.global_theme == "kanagawa" then vim.cmd.colorscheme("kanagawa-"..FLAVOR) end
        end,
    }
}

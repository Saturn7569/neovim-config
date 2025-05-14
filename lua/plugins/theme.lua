return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        local FLAVOR = require("global_config").themes["catppuccin"].flavor
        require("catppuccin").setup({
            flavour = FLAVOR,
            background = {
                light = "latte",
                dark = FLAVOR,
            },
        })
        vim.cmd.colorscheme("catppuccin")
    end
}

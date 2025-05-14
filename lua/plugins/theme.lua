return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        local FLAVOR = "mocha"
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

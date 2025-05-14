return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local THEME = require("global_config").themes["catppuccin"].lualine
        require("lualine").setup({
            options = {
                theme = THEME
            }
        })
    end
}

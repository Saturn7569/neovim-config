return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local CONFIG = require("global_config")
        local THEME = CONFIG.themes[CONFIG.global_theme].lualine
        require("lualine").setup({
            options = {
                theme = THEME
            }
        })
    end
}

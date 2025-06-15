local M = {}

M.tab_size = 4

M.global_theme = "catppuccin"

local CATPPUCCIN_FLAVOR = "mocha"

M.themes = {
    ["catppuccin"] = {
        flavor = CATPPUCCIN_FLAVOR,
        lualine = "catppuccin-"..CATPPUCCIN_FLAVOR,
    },

    ["kanagawa"] = {
        flavor = "wave",
        lualine = "catppuccin-mocha"
    }
}

M.whichkey = {
    preset = "modern"
}

return M

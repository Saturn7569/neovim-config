local M = {}

M.tab_size = 4

M.global_theme = "catppuccin"

local colors = {
    crust = "#11111b",
    red = "#f38ba8",
    green = "#a6e3a1",
    blue = "#89b4fa",
    text = "#cdd6f4",
    sb = "#313244",
}
local custom_catppuccin = {}
custom_catppuccin.normal = {
    a = {bg = colors.red, fg = colors.crust, gui = "bold"},
    b = {bg = colors.sb, fg = colors.text},
    c = {bg = colors.crust, fg = colors.sb},
}
custom_catppuccin.visual = {
    a = {bg = colors.green, fg = colors.crust, gui = "bold"},
    b = {bg = colors.sb, fg = colors.text},
    c = {bg = colors.crust, fg = colors.sb},
}
custom_catppuccin.insert = {
    a = {bg = colors.blue, fg = colors.crust, gui = "bold"},
    b = {bg = colors.sb, fg = colors.text},
    c = {bg = colors.crust, fg = colors.sb},
}

M.themes = {
    ["catppuccin"] = {
        flavor = "mocha",
        lualine = "horizon",
    }
}

M.whichkey = {
    preset = "modern"
}

return M

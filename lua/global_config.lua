local M = {}

M.tab_size = 4

M.global_theme = "catppuccin"

local colors = {
    crust = "#11111b",
    red = "#f38ba8",
    green = "#a6e3a1",
    blue = "#89b4fa",
    mauve = "#cba6f7",
    sap = "#74c7ec",
    text = "#cdd6f4",
    textgray = "#585b70",
    sb = "#313244",
}
local custom_catppuccin = {}
custom_catppuccin.normal = {
    a = {bg = colors.red, fg = colors.crust, gui = "bold"},
    b = {bg = colors.sb, fg = colors.text},
    c = {bg = colors.crust, fg = colors.textgray},
}
custom_catppuccin.visual = {
    a = {bg = colors.green, fg = colors.crust, gui = "bold"},
    b = {bg = colors.sb, fg = colors.text},
    c = {bg = colors.crust, fg = colors.textgray},
}
custom_catppuccin.insert = {
    a = {bg = colors.blue, fg = colors.crust, gui = "bold"},
    b = {bg = colors.sb, fg = colors.text},
    c = {bg = colors.crust, fg = colors.textgray},
}
custom_catppuccin.replace = {
    a = {bg = colors.mauve, fg = colors.crust, gui = "bold"},
    b = {bg = colors.sb, fg = colors.text},
    c = {bg = colors.crust, fg = colors.textgray},
}
custom_catppuccin.command = {
    a = {bg = colors.sap, fg = colors.crust, gui = "bold"},
    b = {bg = colors.sb, fg = colors.text},
    c = {bg = colors.crust, fg = colors.textgray},
}
custom_catppuccin.inactive = {
    a = {bg = colors.crust, fg = colors.textgray, gui = "bold"},
    b = {bg = colors.crust, fg = colors.textgray},
    c = {bg = colors.crust, fg = colors.textgray},
}

M.themes = {
    ["catppuccin"] = {
        flavor = "mocha",
        lualine = custom_catppuccin,
    }
}

M.whichkey = {
    preset = "modern"
}

return M

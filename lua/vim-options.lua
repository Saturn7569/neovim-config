local conf = require("global_config")

vim.cmd("set expandtab")
vim.cmd("set tabstop="..conf.tab_size)
vim.cmd("set softtabstop="..conf.tab_size)
vim.cmd("set shiftwidth="..conf.tab_size)

vim.cmd("set relativenumber")
vim.cmd("set number")

vim.g.mapleader = " "

-- local THEME = "catppuccin"

--vim.cmd.colorscheme(conf.global_theme)

-- keybinds
vim.keymap.set('n', "<leader>0", ":0<CR>", {})
vim.keymap.set('n', "<leader>e", "A<ESC>", {})
vim.keymap.set('n', "<leader>lz", ":Lazy<CR>", {})

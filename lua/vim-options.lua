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
vim.keymap.set('n', "<leader>0", ":0<CR>", { desc = "Jump to the top of the file" })
vim.keymap.set('n', "<leader>e", "A<ESC>", { desc = "Jump to the end of the line "})
vim.keymap.set('n', "<leader>lz", ":Lazy<CR>", { desc = "Lazy settings" })

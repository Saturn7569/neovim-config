local TAB_SIZE = 4

vim.cmd("set expandtab")
vim.cmd("set tabstop="..TAB_SIZE)
vim.cmd("set softtabstop="..TAB_SIZE)
vim.cmd("set shiftwidth="..TAB_SIZE)

vim.cmd("set relativenumber")

vim.g.mapleader = " "

-- local THEME = "catppuccin"

-- vim.cmd.colorscheme(THEME)

-- keybinds
vim.keymap.set('n', "<leader>0", ":0<CR>", {})
vim.keymap.set('n', "<leader>e", "A<ESC>", {})
vim.keymap.set('n', "<leader>lz", ":Lazy<CR>", {})

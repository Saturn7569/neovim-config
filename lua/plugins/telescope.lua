return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = { "%.o", "%.exe", "%.dll", ".git" }
                }
            })

            local builtin = require("telescope.builtin")
            vim.keymap.set('n', "<C-p>", builtin.find_files, { desc = "Switch files (telescope)" })
            vim.keymap.set('n', "<C-b>", builtin.buffers, { desc = "Show open buffers/tabs (telescope)" })
            vim.keymap.set('n', "<leader>fg", builtin.live_grep, { desc = "Grep files (telescope)" })
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}

return {
    -- Close buffers
    {
        "echasnovski/mini.bufremove",
        keys = {
            {
                "<leader>bx",
                function()
                    local bd = require("mini.bufremove").delete
                    if vim.bo.modified then
                        local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
                        if choice == 1 then
                            vim.cmd.write()
                            bd(0)
                        elseif choice == 2 then
                            bd(0, true)
                        end
                    else
                        bd(0)
                    end
                end,
                desc = "Delete buffer"
            },

            -- Force delete buffer
            { "<leader>bX", function() require("mini.bufremove").delete(0, true) end, desc = "Delete buffer (force)" },
        },
    },
    -- Autoclose
    {
        "m4xshen/autoclose.nvim",
        config = function()
            require("autoclose").setup()
        end
    },
    {
        "goolord/alpha-nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "helix",
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Local keymaps from whichkey",
            }
        }
    },
}

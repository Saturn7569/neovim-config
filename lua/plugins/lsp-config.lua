return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "rust_analyzer", "lua_ls", "ruff" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            -- lspconfig.lua_ls.setup({})
            lspconfig.ruff.setup({ capabilities=capabilities })
            lspconfig.rust_analyzer.setup({ capabilities=capabilities })
            lspconfig.ast_grep.setup({ capabilities=capabilities })

            vim.keymap.set('n', "K", vim.lsp.buf.hover, { desc = "Show hover information (lsp)" })
            vim.keymap.set('n', "gd", vim.lsp.buf.definition, { desc = "Jump to definition (lsp)" })
            vim.keymap.set({ 'n', 'v' }, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}

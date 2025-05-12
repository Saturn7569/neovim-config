return {
    "kdheepak/tabline.nvim",
    config = function()
        require("tabline").setup({
            enable = true,
            options = {
                show_tabs_always = true,
                show_devicons = true,

                modified_icon = "+ ",
                modified_italic = true,
            }
        })
        vim.cmd[[
          set guioptions-=e " Use showtabline in gui vim
          set sessionoptions+=tabpages,globals " store tabpages and globals in session
      ]]
    end,
    requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
}

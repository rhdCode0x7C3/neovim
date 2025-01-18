-- lua/plugins/colorscheme.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

local plugins = {
    {
        "catppuccin/nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato"
            })
            vim.cmd("colorscheme catppuccin")
        end,
    },
    {
        "ellisonleao/gruvbox.nvim"
    },
}

if _G.IsMac then
    table.insert(plugins, {
        {
            "f-person/auto-dark-mode.nvim",
            opts = {
                update_interval = 1000,
                set_dark_mode = function()
                    vim.api.nvim_set_option_value("background", "dark", {})
                    vim.cmd("colorscheme catppuccin")
                end,
                set_light_mode = function()
                    vim.api.nvim_set_option_value("background", "light", {})
                    vim.cmd("colorscheme gruvbox")
                end,
            },
        }
    })
end

return plugins

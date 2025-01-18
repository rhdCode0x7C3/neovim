-- lua/plugins/ui.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

return {
    {
            "echasnovski/mini.diff",
        version = "*",
        config = function ()
           require("mini.diff").setup()
        end
    },
    {
        "echasnovski/mini.statusline",
        version = "*",
        dependencies = {
            "echasnovski/mini.icons",
            "echasnovski/mini-git",
            "echasnovski/mini.diff",
        },
        config = function()
            require("mini.statusline").setup()
        end,
    },
    {
        "echasnovski/mini.icons",
        version = "*",
        lazy = true,
        config = function()
            require("mini.icons").setup()
        end,
    },
}

-- lua/plugins/pairs.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

return {
    {
        "echasnovski/mini.pairs",
        version = "*",
        config = function()
            require("mini.pairs").setup({
                mappings = {
                    ["`"] = false,
                },
            })
        end,
    },

    {
        "echasnovski/mini.surround",
        version = "*",
        config = function()
            require("mini.surround").setup()
        end,
    },
}

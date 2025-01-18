-- lua/plugins/explorer.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

return {
    "echasnovski/mini.nvim",
    version = false,
    config = function ()
        require("mini.files").setup({})
        vim.keymap.set("n", "<leader>e", function() MiniFiles.open() end)
    end,
}

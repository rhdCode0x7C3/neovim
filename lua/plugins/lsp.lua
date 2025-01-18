-- lua/plugins/lsp.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp",
        },
        config = function()
            local status, lsp = pcall(require, "lsp")
            if not status then
                require('lspconfig').lua_ls.setup({})
            else
                lsp.setup()
            end
        end,
    },
}

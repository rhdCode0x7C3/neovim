return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp",
        },
        config = function()
            local status, lsp = pcall(require, "lsp")
            if not status then
                require("lspconfig").lua_ls.setup({})
            else
                lsp.setup()
            end
        end,
    },
}

local Map = require("core.keymaps").Map

return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim", -- required
        "sindrets/diffview.nvim", -- optional - Diff integration
        "echasnovski/mini.pick", -- optional
    },
    config = function()
        require("neogit").setup({
            graph_style = "kitty",
        })

        -- Keymaps
        Map("n", "<leader>g", function()
            require("neogit").open({ kind = "floating" })
        end)
    end,
}

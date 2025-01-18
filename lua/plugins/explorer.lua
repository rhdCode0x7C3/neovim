return {
    "echasnovski/mini.nvim",
    version = false,
    config = function ()
        require("mini.files").setup({})
        vim.keymap.set("n", "<leader>e", function() MiniFiles.open() end)
    end,
}

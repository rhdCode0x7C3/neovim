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

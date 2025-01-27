return {
    -- Formatting
    {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    lua = { "stylua" },
                    -- This is not ready to use in production
                    -- nushell = { "nufmt" },
                    ocaml = { "ocamlformat" },
                },
                format_on_save = {
                    timeout_ms = 500,
                    lsp_format = "fallback",
                },
            })
        end,
    },

    -- Linting
    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            local lint = require("lint")

            lint.linters_by_ft = {
                lua = { "luacheck" },
            }

            local lint_group = vim.api.nvim_create_augroup("lint", { clear = true })

            vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
                group = lint_group,
                callback = function()
                    lint.try_lint()
                end,
            })
        end,
    },
}

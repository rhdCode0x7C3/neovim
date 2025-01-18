-- lua/plugins/treesitter.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPre", "BufNewFile", },
        dependencies = { "nushell/tree-sitter-nu" },
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "c",
                    "lua",
                    "vim",
                    "vimdoc",
                    "ocaml",
                    "python",
                    "nu",
                    "nix",
                    "markdown", "markdown_inline"
                },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
                textobjects = {
                    select = {
                        enable = true,
                        keymaps = {
                            --Nushell only
                            ["aP"] = "@pipeline.outer",
                            ["iP"] = "@pipeline.inner",

                            -- All languages
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["al"] = "@loop.outer",
                            ["il"] = "@loop.inner",
                            ["aC"] = "@conditional.outer",
                            ["iC"] = "@conditional.inner",
                            ["aS"] = "@statement.outer",
                            ["iS"] = "@statement.inner",
                        },
                    },
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-space>",
                        node_incremental = "<C-space>",
                        scope_incremental = false,
                        node_decremental = "<bs>",
                    },
                },
            })
        end,
    },
}

-- lua/plugins/lsp.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "neovim/nvim-lspconfig", "mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "ocamllsp",
                },
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        dependancies = { "saghen/blink.cmp" },
        opts = {
            servers = {
                lua_ls = {},
                nushell = {},
                pyright = {},
                ocamllsp = {
                    settings = {
                        codelens = { enable = true },
                        inlayHints = { enable = true },
                    },
                },
            },
        },
        config = function(_, opts)
            local lspconfig = require("lspconfig")
                        for server, config in pairs(opts.servers) do
                            config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
                            lspconfig[server].setup(config)
                        end

                    end,
                },
            }

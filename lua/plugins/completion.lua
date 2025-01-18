return {
	"saghen/blink.cmp",
    version = "*",
    --- @module "blink.cmp"
    --- @type blink.cmp.Config

    opts = {
        keymap = {
            preset = "default",
            ["<C-j>"] = { "select_next", "fallback" },
            ["<C-k>"] = { "select_prev", "fallback" },
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
    },
}

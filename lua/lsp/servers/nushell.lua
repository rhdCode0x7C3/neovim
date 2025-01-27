local M = {}
local utils = require("lsp.utils")

function M.setup(on_attach)
    local cmd = utils.get_binary_path("nu")

    if not cmd then
        vim.notify("Nushell LSP not found", vim.log.levels.WARN)
        return
    end

    require("lspconfig").nushell.setup({
        cmd = { "nu", "--lsp" },
        on_attach = on_attach,
        capabilities = require("blink.cmp").get_lsp_capabilities(),
    })
end

return M

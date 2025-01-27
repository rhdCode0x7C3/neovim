local M = {}
local utils = require("lsp.utils")

function M.setup(on_attach)
    local cmd = utils.get_binary_path("ocamllsp")

    if not cmd then
        vim.notify("ocamllsp not found", vim.log.levels.WARN)
        return
    end

    require("lspconfig").ocamllsp.setup({
        cmd = cmd,
        on_attach = on_attach,
        capabilities = require("blink.cmp").get_lsp_capabilities(),
        settings = {
            codelens = { enable = true },
            inlayHints = { enable = true },
        },
    })
end

return M

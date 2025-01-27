local M = {}
local utils = require("lsp.utils")

function M.setup(on_attach)
    local cmd = utils.get_binary_path("lua-language-server")

    if not cmd then
        vim.notify("lua-language-server not found", vim.log.levels.WARN)
        return
    end
    require("lspconfig").lua_ls.setup({
        cmd = cmd,
        on_attach = on_attach,
        capabilities = require("blink.cmp").get_lsp_capabilities(),
        settings = {
            Lua = {
                runtime = {
                    version = "LuaJIT",
                },
                diagnostics = {
                    globals = { "vim" },
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                },
                telemetry = {
                    enable = false,
                },
            },
        },
    })
end

return M

local M = {}

function M.setup()
    -- Load shared on_attach behaviour
    local on_attach = require("lsp.on_attach")

    -- Set up servers
    local servers = {
        "ocaml",
        "nushell",
        "lua_ls",
    }

    for _, server in ipairs(servers) do
        require("lsp.servers." .. server).setup(on_attach)
    end
end

return M

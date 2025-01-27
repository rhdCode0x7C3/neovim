return function(client, bufnr)
    -- Buffer local mappings
    local opts = { buffer = bufnr, noremap = true, silent = true }

    -- LSP navigation
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

    -- Diagnostics
    vim.keymap.set("n", "do", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "dn", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "dN", vim.diagnostic.goto_prev, opts)

    -- Format on save if the LSP supports it
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format()
            end,
        })
    end
end

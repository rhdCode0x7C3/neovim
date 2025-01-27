function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Yank buffer to system clipboard
Map("n", "%y", 'gg"+yG', { desc = "Yank buffer to system clipboard" })

return { Map = Map }

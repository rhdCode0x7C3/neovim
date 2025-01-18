-- lua/core/keymaps.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- LSP
Map(
"n", "<leader>dd",
function() vim.diagnostic.open_float() end,
{desc = "Float diagnostic text"})

Map(
"n", "<leader>dn",
function() vim.diagnostic.open_next() end,
{desc = "Float diagnostic text"})

Map(
"n", "<leader>dp",
function() vim.diagnostic.open_prev() end,
{desc = "Float diagnostic text"})

-- Yank buffer to system clipboard
Map(
    "n", "%y",
    'gg"+yG',
    {desc = "Yank buffer to system clipboard"})

return { Map = Map }



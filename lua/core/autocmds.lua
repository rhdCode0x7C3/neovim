-- lua/core/autocmds.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

-- Remember Folds
local fold_group = vim.api.nvim_create_augroup("remember_folds", {clear = true})

vim.api.nvim_create_autocmd({"BufWinLeave"}, {
    pattern = {"*"},
    group = fold_group,
    command = "mkview"
})

vim.api.nvim_create_autocmd({"BufWinEnter"}, {
    pattern = {"*"},
    group = fold_group,
    command = "silent! loadview"
})

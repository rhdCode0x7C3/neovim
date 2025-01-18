-- init.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

-- Are we on a Mac?
_G.IsMac = vim.loop.os_uname().sysname == "Darwin"

require("core.options")
require("core.lazy")
require("core.keymaps")
-- require("core.autocmds")

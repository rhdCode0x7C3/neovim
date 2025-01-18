-- Are we on a Mac?
_G.IsMac = vim.loop.os_uname().sysname == "Darwin"

require("core.options")
require("core.lazy")
require("core.keymaps")
require("core.autocmds")

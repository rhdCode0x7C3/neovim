-- after/ftplugin/nushell.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

-- Define fold text function for nushell files
local function nu_foldtext()
    local foldstart = vim.v.foldstart
    local lines = vim.api.nvim_buf_get_lines(0, foldstart - 1, vim.v.foldend, false)
    for _, line in ipairs(lines) do
        if not line:match("^%s*#") then
            return string.format("%s", line)
        end
    end
    return lines[1] or ""
end

-- Make the function available to v:lua
_G.nu_foldtext = nu_foldtext

-- Create autocmd for .nu files
vim.api.nvim_create_autocmd({"BufEnter",}, {
    pattern = {"*.nu",},
    group = vim.api.nvim_create_augroup("mine", {clear = true}),
    callback = function()
        vim.opt_local.foldtext = "v:lua.nu_foldtext()"
    end
})

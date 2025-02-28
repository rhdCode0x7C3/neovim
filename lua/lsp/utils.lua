local M = {}

function M.get_binary_path(name)
    -- Search for a binary in $env.PATH
    if vim.fn.executable(name) == 1 then
        return { name }
    end
    -- If not found, return nil
    return nil
end

return M

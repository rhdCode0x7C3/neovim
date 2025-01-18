-- lua/plugins/picker.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

local Map = require("core.keymaps").Map

local maps = {
    -- {
    --     mode = "",
    --     key = "<leader>",
    --     picker = "",
    --     desc = ""
    -- },

    {
        mode = "n",
        key = "<leader>ff",
        picker = "files",
        desc = "Find files"
    },
    {
        mode = "n",
        key = "<leader>fb",
        picker = "buffers",
        desc = "Find buffers"
    },
    {
        mode = "n",
        key = "<leader>fg",
        picker = "grep_live",
        desc = "Live grep"
    },
    {
        mode = "n",
        key = "<leader>fr",
        picker = "resume",
        desc = "Resume previous picker"
    },
    {
        mode = "n",
        key = "<leader>fh",
        picker = "help",
        desc = "Resume previous picker"
    },
}

local win_config = function ()
    local height = math.floor(0.618 * vim.o.lines)
    local width = math.floor(0.618 * vim.o.columns)
    return {
        anchor = 'NW', height = height, width = width,
        row = math.floor(0.5 * (vim.o.lines - height)),
        col = math.floor(0.5 * (vim.o.columns - width)),
    }
end

return {
    {
        "echasnovski/mini.pick",
        version = "*",
        config = function()
            require("mini.pick").setup({
                mappings = {
                    move_down = "<C-j>",
                    move_up = "<C-k>",
                    move_start = "<C-g>",
                },
                window = {
                    config = win_config,
                },

            })
            -- mappings
            for _, mapping in ipairs(maps) do
                Map(
                    mapping.mode,
                    mapping.key,
                    function()
                        require("mini.pick").builtin[mapping.picker]()
                    end,
                    {desc = mapping.desc}
                )
            end
        end,
    },
}

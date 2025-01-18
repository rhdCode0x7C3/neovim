-- lua/core/options.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Sign column
vim.opt.signcolumn = "number"

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Line wrapping
vim.opt.wrap = false
vim.opt.textwidth = 80

-- Tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Scrolling
vim.opt.scrolloff = 10

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Colours
vim.opt.termguicolors = true

-- Signs
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '⛔️',
            [vim.diagnostic.severity.WARN] = '😱',
            [vim.diagnostic.severity.INFO] = '📘',
            [vim.diagnostic.severity.HINT] = '🔎',
        }
    }
})

-- after/ftplugin/ocaml.lua
-- Neovim Config
-- rhdCode0x7C3
-- v0.3.0 2025-01-18

local ocp_indent_path = vim.fn.system("opam var ocp-indent:share"):gsub('\n', '')
vim.opt.runtimepath:prepend(ocp_indent_path .. '/vim')

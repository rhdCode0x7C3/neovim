local ocp_indent_path = vim.fn.system("opam var ocp-indent:share"):gsub('\n', '')
vim.opt.runtimepath:prepend(ocp_indent_path .. '/vim')

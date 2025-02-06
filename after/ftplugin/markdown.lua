vim.api.nvim_create_autocmd("FileType", {
    pattern = "md",
    callback = function()
        vim.opt_local.conceallevel = 2
    end,
})


vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 100,
        })
    end,
})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
    pattern = "*.go",
    command = "silent !go fmt % && goimports -w %"
})

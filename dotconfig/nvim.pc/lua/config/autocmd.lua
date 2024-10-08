vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 80,
        })
    end,
})

-- vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
--     pattern = "*.go",
--     callback = function()
--         local buf = vim.api.nvim_get_current_buf()
--         vim.api.nvim_buf_set_option(buf, "expandtab", false)
--     end
-- })

vim.api.nvim_create_autocmd({"BufWritePost"}, {
    pattern = "*.go",
    command = "silent !go fmt %"
})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
    pattern = "*.proto",
    -- command = "silent !clang-format -i %"
    command = "silent !buf format --write %"
})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
    pattern = "*.html",
    command = "silent !prettier % --write"
})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
    pattern = "*.css",
    command = "silent !prettier % --write"
})

-- vim.api.nvim_create_autocmd({"BufWritePost"}, {
--     pattern = "*.cc",
--     command = "silent !clang-format % -i"
-- })

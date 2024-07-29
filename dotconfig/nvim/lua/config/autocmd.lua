vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("tb-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = "*.txt",
    callback = function()
        local buf = vim.api.nvim_get_current_buf()
        -- vim.api.nvim_buf_set_option(buf, "textwidth", 80)
        vim.api.nvim_buf_set_option(buf, "wrap", true)
        vim.api.nvim_buf_set_option(buf, "relativenumber", false)
        vim.api.nvim_buf_set_option(buf, "number", false)
        vim.api.nvim_buf_set_option(buf, "colorcolumn", "0")
        vim.api.nvim_buf_set_option(buf, "signcolumn", "no")
    end
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
        vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", ";rn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<c-h>", function() vim.lsp.buf.signature_help() end, opts)
    end,
})

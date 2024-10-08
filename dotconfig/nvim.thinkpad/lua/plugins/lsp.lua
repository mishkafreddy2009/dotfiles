return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(event)
                local opts = { buffer = event.buf }
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
                vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", "<c-h>", function() vim.lsp.buf.signature_help() end, opts)
            end
        })
        local lspconfig = require("lspconfig")
        lspconfig.pyright.setup({})
        lspconfig.gopls.setup({})
        lspconfig.clangd.setup({})
    end
}

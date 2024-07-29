return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

        local servers = {
        }

        require("mason").setup()
        require("mason-lspconfig").setup({
            require("lspconfig").pyright.setup {}
            -- handlers = {
            --     function(server_name)
            --         local server = servers[server_name] or {}
            --         server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
            --         require("lspconfig")[server_name].setup(server)
            --     end
            -- }
        })
    end,
}

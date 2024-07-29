return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
    },
    config = function()
        local lspconfig = require("lspconfig")
        require("mason").setup {}
        require("mason-lspconfig").setup({
            ensure_installed = {
                "pyright",
                "lua_ls",
                "emmet_ls",
                "cssls",
            }
        })
        lspconfig.pyright.setup {}
        lspconfig.lua_ls.setup {}
        lspconfig.emmet_ls.setup {}
        lspconfig.cssls.setup {}
        local cmp = require("cmp")
        cmp.setup {
            completion = {
                autocomplete = false,
                completeopt = "menu,menuone,noinsert",
            },
            mapping = cmp.mapping.preset.insert {
                ["<C-n>"] = cmp.mapping.select_next_item(),
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-y>"] = cmp.mapping.confirm { select = true },
                ["<C-Space>"] = cmp.mapping.complete {},
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "path" },
            },
        }
    end,
}

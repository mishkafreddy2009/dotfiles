return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "ms-jpq/coq_nvim",
        "stevearc/conform.nvim",
    },
    init = function()
        vim.g.coq_settings = {
            auto_start = "shut-up",
            completion = {
                always = false,
            },
            display = {
                statusline = {
                    helo = false,
                }
            },
            keymap = {
                recommended = false,
            }
        }
    end,
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                python = { "black" }
            }
        })
        local lspconfig = require("lspconfig")
        local coq = require("coq")
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "ruff_lsp",
                "pylsp",
            },
            handlers = {
                function(server_name)
                    lspconfig[server_name].setup(coq.lsp_ensure_capabilities())
                end
            }
        })
        lspconfig.pylsp.setup(coq.lsp_ensure_capabilities({
            settings = {
                pylsp = {
                    plugins = {
                        ruff = { enabled = true },
                        pycodestyle = { enabled = false },
                        pyflakes = { enabled = false },
                        mccabe = { enabled = false },
                    }
                }
            }
        }))
    end
}

return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        {
            "<leader>tt",
            "<cmd>Trouble diagnostics toggle<cr>",
        },
        {
            "<leader>tc",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        },
        {
            "<leader>ts",
            "<cmd>Trouble symbols toggle focus=false<cr>",
        },
        {
            "<leader>tl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        },
        {
            "<leader>tL",
            "<cmd>Trouble loclist toggle<cr>",
        },
        {
            "<leader>tq",
            "<cmd>Trouble qflist toggle<cr>",
        },
    },
}

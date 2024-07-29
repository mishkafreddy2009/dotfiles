return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
        require("telescope").setup {
            defaults = {
                border = false,
            },
        }

        pcall(require("telescope").load_extension, "fzf")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
        vim.keymap.set("n", "<leader>sk", builtin.keymaps, {})
        vim.keymap.set("n", ";sf", builtin.find_files, {})
        vim.keymap.set("n", "<leader>ss", builtin.builtin, {})
        vim.keymap.set("n", ";sw", builtin.grep_string, {})
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>sr", builtin.resume, {})
        vim.keymap.set("n", "<leader>s.", builtin.oldfiles, {})
        vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})
        vim.keymap.set("n", "<leader>/", function()
            builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
                border = false,
                previewer = false,
            })
        end, {})
        vim.keymap.set("n", "<leader>sn", function()
            builtin.find_files { cwd = vim.fn.stdpath "config" }
        end, {})
    end
}

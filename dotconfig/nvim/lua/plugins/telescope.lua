return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        }
    },
    config = function()
        local t = require("telescope")
        t.setup {
            defaults = {
                border = false,
            },
        }
        pcall(t.load_extension, "fzf")
        local t_builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>sh", t_builtin.help_tags, {})
        vim.keymap.set("n", "<leader>sk", t_builtin.keymaps, {})
        vim.keymap.set("n", "<leader>sf", t_builtin.find_files, {})
        vim.keymap.set("n", "<leader>ss", t_builtin.builtin, {})
        vim.keymap.set("n", "<leader>sw", t_builtin.grep_string, {})
        vim.keymap.set("n", "<leader>sg", t_builtin.live_grep, {})
        vim.keymap.set("n", "<leader>sr", t_builtin.resume, {})
        vim.keymap.set("n", "<leader>s.", t_builtin.oldfiles, {})
        vim.keymap.set("n", "<leader>sb", t_builtin.buffers, {})
        vim.keymap.set("n", "<leader>c", function()
            t_builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
                border = false,
                previewer = false,
            })
        end, {})
        vim.keymap.set("n", "<leader>sn", function()
            t_builtin.find_files { cwd = vim.fn.stdpath "config" }
        end, {})
    end
}

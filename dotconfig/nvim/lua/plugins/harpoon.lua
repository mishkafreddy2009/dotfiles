return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()
        vim.keymap.set("n", ";hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", ";ha", function() harpoon:list():add() end)
        vim.keymap.set("n", ";1", function() harpoon:list():select(1) end)
        vim.keymap.set("n", ";2", function() harpoon:list():select(2) end)
        vim.keymap.set("n", ";3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", ";4", function() harpoon:list():select(4) end)
    end
}

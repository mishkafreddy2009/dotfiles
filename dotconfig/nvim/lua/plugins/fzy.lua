return {
	"mfussenegger/nvim-fzy",
	config = function()
		local fzy = require("fzy")
		vim.keymap.set("n", "<leader>ff", function() fzy.execute("fd -H", fzy.sinks.edit_file) end, { silent = true })
		vim.keymap.set("n", "<leader>fl", function() fzy.execute("rg --with-filename --no-heading --color never --line-number .", fzy.sinks.edit_live_grep) end, { silent = true })
	end
}

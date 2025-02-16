return {
	"mishkafreddy2009/fzyf.nvim",
	config = function()
		fzyf = require("fzyf")
		fzyf.setup({
			vim.keymap.set("n", "<leader>ff", ":FzyfFindFile<CR>"),
			vim.keymap.set("n", "<leader>fl", ":FzyfLiveGrep<CR>"),
		})
	end
}

return {
	"lewis6991/gitsigns.nvim",
	config = function()
		gitsigns = require("gitsigns")
		vim.keymap.set("n", "<leader>hd", gitsigns.diffthis)
		vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk)
		vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk)
		gitsigns.setup({})
	end
}

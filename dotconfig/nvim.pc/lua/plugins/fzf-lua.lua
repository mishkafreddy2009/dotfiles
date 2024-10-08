return {
	"ibhagwan/fzf-lua",
	config = function()
		fzf = require("fzf-lua")
		vim.keymap.set("n", "<leader>ff", fzf.files)
		vim.keymap.set("n", "<leader>fg", fzf.grep_curbuf)
		vim.keymap.set("n", "<leader>fl", fzf.live_grep)
		vim.keymap.set("n", "<leader>fr", fzf.resume)
		vim.keymap.set("n", "<leader>fn", function() fzf.files({ cwd="~/.config/nvim" }) end)
		vim.keymap.set({ "n", "v", "i" }, "<c-x><c-f>", function() fzf.complete_path() end, { silent = true })
		fzf.setup({
			"fzf-native",
			winopts = {
				border = "single",
				preview = {
					border = "noborder"
				}
			}
		})
	end
}

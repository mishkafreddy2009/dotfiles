return {
	"echasnovski/mini.completion",
	version = false,
	config = function()
		require("mini.completion").setup({
			delay = { completion = 0, info = 0, signature = 0 },
		})
	end
}

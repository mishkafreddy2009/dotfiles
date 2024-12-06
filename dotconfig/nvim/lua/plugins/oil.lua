return {
    "stevearc/oil.nvim",
    config = function()
    	require("oil").setup({
		confirmation = {
			border = "single",
		},
	})
    end
}

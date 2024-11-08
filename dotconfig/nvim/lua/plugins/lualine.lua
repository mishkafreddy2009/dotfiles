return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup {
			options = {
				icons_enabled = false,
				section_separators = { left = "", right = ""},
				component_separators = { left = "", right = ""},
			},
			sections = {
				lualine_c = {
					{
						"filename",
						path = 1
					}
				}
			}
		}
	end
}

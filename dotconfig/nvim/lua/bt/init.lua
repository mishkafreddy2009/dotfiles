local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ";"
vim.g.have_nerd_font = false
vim.cmd.filetype("indent off")
vim.cmd.colorscheme("vim")

require("bt.config.debloat")
require("bt.config.option")
require("bt.config.autocmd")
require("bt.config.keymap")
require("lazy").setup({
	spec = {
		{ import = "bt.plugs" },
	},
	install = {
		colorscheme = { "vim" }
	},
})

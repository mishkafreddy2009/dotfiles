vim.g.mapleader = ";"
vim.g.have_nerd_font = false
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)
vim.cmd.filetype("indent off")
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.history = 2048
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.inccommand = "split"
vim.opt.cursorline = false
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.termguicolors = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.statusline = "%<%f %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}%=%l/%L,%c%V%8P"
vim.opt.undofile = true
vim.opt.colorcolumn = "80"
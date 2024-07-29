vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.cmd.filetype("indent off")
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.cursorline = true
vim.opt.laststatus = 3
vim.opt.list = true
vim.opt.listchars = { tab = ">:", trail = ":", extends = "<", precedes = "<" }
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1
vim.opt.scrolloff = 10
vim.opt.showcmd = false
vim.opt.showmatch = true
vim.opt.signcolumn = "yes"
vim.opt.statusline = "%<%f %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}%=%l/%L,%c%V%8P"
vim.opt.synmaxcol = 512

vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true
vim.opt.history = 2048

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.mouse = ""
vim.opt.completeopt = "menuone"
vim.opt.clipboard = "unnamedplus"
vim.opt.matchpairs:append { "<:>" }
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.timeoutlen = 300
vim.opt.wildignorecase = true
vim.opt.inccommand = "split"
vim.opt.scrollback = 5000
vim.opt.wildoptions = ""
vim.opt.termguicolors = false
vim.opt.linebreak = true
vim.opt.updatetime = 4000
vim.opt.colorcolumn = "80"

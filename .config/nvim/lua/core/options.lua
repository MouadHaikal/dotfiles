vim.g.have_nerd_font = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "no"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.o.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.o.inccommand = "split"
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true
vim.opt.foldenable = true
vim.opt.foldmethod = "indent"
vim.opt.termguicolors = true

vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

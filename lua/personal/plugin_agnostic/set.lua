vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.python3_host_prog = "/home/racl/code/.venv/neovim/bin/python"

vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.smartindent = true

vim.wo.wrap = false

vim.o.updatetime = 250
vim.o.termguicolors = true

vim.o.confirm = true

vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.list = true
vim.opt.listchars = {
	tab = '» ', trail = '·', nbsp = '␣'
}

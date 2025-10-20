-- duh
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- break indent
vim.o.breakindent = true

-- this thing helps with the weird spacing issues on line numbers
vim.o.signcolumn = 'yes'

-- mouse mode
vim.o.mouse = "a"

-- line numbers
vim.opt.number = true
vim.wo.relativenumber = true

-- sync clipboard
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- nerd fonts
vim.g.have_nerd_font = true

-- searching options
vim.o.ignorecase = false
vim.o.smartcase = true

-- screen lines to keep above and below the cursor
vim.o.scrolloff = 8

-- setting a colorscheme
vim.cmd.colorscheme("vague")

vim.opt.updatetime = 250
vim.o.timeoutlen = 300
vim.opt.termguicolors = true

-- -- for some whitespaces
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

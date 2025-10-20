-- duh
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.smartindent = true

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
vim.o.scrolloff = 10

-- setting a colorscheme
vim.cmd.colorscheme("vague")

vim.opt.updatetime = 700

vim.opt.termguicolors = true

vim.opt.winborder = "rounded"

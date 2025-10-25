-- duh
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.swapfile = false

-- nice lil corners
vim.o.winborder = "rounded"

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
vim.o.scroll = 5

-- setting a colorscheme
vim.cmd.colorscheme("vague")

vim.opt.updatetime = 250
vim.o.timeoutlen = 300
vim.opt.termguicolors = true

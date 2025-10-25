-- space as leader key
vim.g.mapleader = " "

-- jk in insert mode instead of escape
vim.keymap.set("i", "jk", "<Esc>")

-- ; instead of :
vim.keymap.set("n", ";", ":")

-- ctrl d and u but better
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- shouldve been in the set file but its okay

-- same thing with n and N while searching
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
-- escape to remove the higlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- write to a file
vim.keymap.set("n", "<leader>w", ":write<cr>")
-- update and source
vim.keymap.set("n", "<leader>o", ":update<cr> :source<cr>")
-- quit
vim.keymap.set("n", "<leader>q", ":quit<cr>")
-- select all
vim.keymap.set("n", "<leader>sa", "ggVG")
-- copy whole file
vim.keymap.set("n", "<leader>cp", "ggVGy")
-- not losing paste buffer when pasting
vim.keymap.set("x", "<leader>p", '"_dP')
-- format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- make scripts executable within neovim
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })

-- switch between windows using the ctrl hjkl
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "jk to go backto normal mode" })
vim.keymap.set("n", ";", ":", { desc = "; to command mode in normal mode" })

-- working with tabs
vim.keymap.set("n", "<Tab>", ":tabnext<cr>", { desc = "go to next tab" })
vim.keymap.set("n", "<S-Tab>", ":tabprevious<cr>", { desc = " go to the previous tab using shift + tab" })

-- moving selected text up and down while in visual mode
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- lsp keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "LSP references" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP rename" })

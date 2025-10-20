local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fs", builtin.find_files, { desc = "Telescope file search" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })

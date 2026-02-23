vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>")
require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_hidden = false,
    },
  },
})

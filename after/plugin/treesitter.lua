require("nvim-treesitter").setup({
  ensure_installed = {
    "html",
    "css",
    "go",
    "rust",
    "php",
    "javascript",
    "typescript",
    "blade"
  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { 'blade' },
  },

  indent = {
    enable = true,
  },
})


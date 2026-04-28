return {
  -- vague
  {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
  },

  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

  -- midnight
  {
    'dasupradyumna/midnight.nvim',
    lazy = false,
    priority = 1000
  },

  -- deviuspro
  {
    "DeviusVim/deviuspro.nvim",
  },

  -- nightfox
  {
    "EdenEast/nightfox.nvim"
  },

  -- gabriel
  {
    "gantoreno/nvim-gabriel",
  },

  -- catpuccin dark
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      term_colors = true,
      transparent_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#202020",
          mantle = "#202020",
          crust = "#202020",
        },
      },
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    },
  },

  { 'projekt0n/github-nvim-theme', name = 'github-theme' }

}

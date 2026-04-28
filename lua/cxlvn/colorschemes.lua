require("vague").setup({
    transparent = true,
    style = {
        bg = "#0a0a0a",
        fg = "#cdcdcd",
        float = "#070707",
        line = "#1a1a1a",
        comment = "#555555",
        string = "#87af87",
        keyword = "#a1a1a1",
    },
})

require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
  show_end_of_buffer = false,
  term_colors = true,
  color_overrides = {
    mocha = {
      base = "#0a0a0a",
      mantle = "#070707",
      crust = "#050505",
      surface0 = "#1a1a1a",
    },
  },
  custom_highlights = function(colors)
    return {
      Normal = { bg = "NONE" },
      NormalNC = { bg = "NONE" },

      NormalFloat = { bg = colors.mantle },
      FloatBorder = { bg = colors.mantle, fg = colors.surface0 },

      Pmenu = { bg = colors.mantle, fg = colors.text },
      PmenuSel = { bg = colors.surface0, fg = "NONE" },

      WinBar = { bg = "NONE" },
      WinBarNC = { bg = "NONE" },
      StatusLine = { bg = colors.crust, fg = colors.subtext1 },
    }
  end,
})

vim.cmd.colorscheme("vague")

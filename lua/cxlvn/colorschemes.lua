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

require("koda").setup({
  transparent = true,
})

require('poimandres').setup {
  disable_background = true,
}

require("sora").setup({
  on_colors = function(colors)
    colors.bg = "#000000"
    colors.bg_float = "#000000"
    colors.bg_statusline = "#000000"
  end,
})


vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "retrobox",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
})

vim.cmd.colorscheme("sora")

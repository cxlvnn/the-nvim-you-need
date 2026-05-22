local habamax_colors = {
  bg      = '#000000',
  fg      = '#bcbcbc',
  gray    = '#1c1c1c',
  dim     = '#767676',
  accent  = '#87af5f', -- Green for Insert
  warn    = '#d7875f', -- Orange for Visual
  error   = '#d75f00', -- Red for Replace
  info    = '#5f87af', -- Blue for Command
}

local custom_habamax = {
  normal = {
    a = { bg = habamax_colors.dim, fg = habamax_colors.bg, gui = 'bold' },
    b = { bg = habamax_colors.gray, fg = habamax_colors.fg },
    c = { bg = habamax_colors.bg, fg = habamax_colors.fg },
  },
  insert  = { a = { bg = habamax_colors.accent, fg = habamax_colors.bg, gui = 'bold' } },
  visual  = { a = { bg = habamax_colors.warn,   fg = habamax_colors.bg, gui = 'bold' } },
  replace = { a = { bg = habamax_colors.error,  fg = habamax_colors.bg, gui = 'bold' } },
  command = { a = { bg = habamax_colors.info,   fg = habamax_colors.bg, gui = 'bold' } },
}

require('lualine').setup {
  options = {
    theme = custom_habamax,
    component_separators = { left = '│', right = '│' },
    section_separators = { left = '', right = '' },
    globalstatus = true,
  },
  sections = {
    lualine_a = { { 'mode', fmt = function(str) return str:sub(1,1) end } }, -- One char mode
    lualine_b = { 'branch', 'diff' },
    lualine_c = { { 'filename', path = 1 } }, -- Path 1 show relative path
    lualine_x = { 'diagnostics', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}

return {
  cmd = { 'gopls' },
  filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
  root_markers = { 'go.mod', '.git' },
  settings = {
    gopls = {
      analyses        = {
        unusedparams = true,
        shadow       = true,
      },
      staticcheck     = false,
      gofumpt         = true,  -- stricter fmt
      usePlaceholders = false, -- snip-friendly
    },
  },
}

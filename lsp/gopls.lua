return {
  cmd = { 'gopls' },
  filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
  root_markers = { 'go.mod', '.git' },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow       = true,
      },
      staticcheck  = true,
      gofumpt      = true,      -- stricter fmt
      usePlaceholders = true,   -- snip-friendly
    },
  },
}

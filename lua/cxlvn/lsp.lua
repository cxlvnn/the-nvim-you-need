vim.lsp.enable({
  "lua_ls",
  "gopls",
  "cssls",
  "clangd",
  "cmake",
  "rust-analyzer",
  "html-lsp",
  "typescript-language-server",
  "emmet-language-server",
  "emmet-ls",
  "intelephense",
  "pyright",
})

vim.diagnostic.config({
  virtual_lines = false,
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    local params = vim.lsp.util.make_range_params()
    params.context = { only = { 'source.organizeImports' } }

    -- 1. organise imports
    local result = vim.lsp.buf_request_sync(0, 'textDocument/codeAction', params, 1000)
    if result then
      for cid, res in pairs(result) do
        for _, r in pairs(res.result or {}) do
          if r.edit then
            local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or 'utf-16'
            vim.lsp.util.apply_workspace_edit(r.edit, enc)
          end
        end
      end
    end

    -- 2. format
    vim.lsp.buf.format({ async = false })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "css", "javascriptreact", "typescriptreact", "vue", "svelte" },
  callback = function()
    vim.lsp.start({
      name = "emmet",
      cmd = { "emmet-language-server", "--stdio" },
      root_dir = vim.fs.dirname(vim.fs.find({ "package.json", ".git" }, { upward = true })[1]),
      init_options = {
        showExpandedAbbreviation = "always",
        showAbbreviationSuggestions = true,
        includeLanguages = {
          javascript = "javascriptreact",
          typescript = "typescriptreact",
        },
      },
    })
  end,
})

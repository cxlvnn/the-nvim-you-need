-- highlight while yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.hl.on_yank()
  end,
})

-- reload config
vim.api.nvim_create_user_command("ReloadConfig", function()
  for name,_ in pairs(package.loaded) do
    if name:match("^cxlvn") then
      package.loaded[name] = nil
    end
  end
  dofile(vim.env.MYVIMRC)
  print("✅ Config reloaded!")
end, {})

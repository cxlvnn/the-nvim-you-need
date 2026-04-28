require('cxlvn')

vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})

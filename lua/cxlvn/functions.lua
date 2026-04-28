-- advanced new file
local function create_file_workflow()
  require("telescope").extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = vim.fn.expand("%:p:h"),
    respect_gitignore = false,
    hidden = true,
    initial_mode = "insert",
    attach_mappings = function(_, map)
      vim.schedule(function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-n>", true, false, true), "m", true)
      end)
      return true
    end
  })
end

vim.keymap.set("n", "<leader>c", create_file_workflow)

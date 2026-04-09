vim.filetype.add({
    pattern = { [".*%.blade%.php"] = "blade" },
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "blade",
    callback = function() vim.treesitter.start() end,
})

require("nvim-treesitter").setup({
	ensure_installed = {
		"html",
		"css",
		"go",
		"rust",
		"php",
		"php_only",
		"javascript",
		"typescript",
    "blade"
	},

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = "blade",
	},

	indent = {
		enable = true,
	},
})

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
		additional_vim_regex_highlighting = false,
	},

	indent = {
		enable = true,
	},
})

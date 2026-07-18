require("nvim-treesitter").setup({
	ensure_installed = {
		"html",
		"css",
		"golang",
		"rust",
		"php",
		"javascript",
		"typescript",
		"tsx",
		"vue",
		"blade.php",
	},

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,
	},

	indent = {
		enable = true,
	},
})

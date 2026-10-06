require("vague").setup({
	transparent = true,
	style = {
		bg = "#0a0a0a",
		fg = "#cdcdcd",
		float = "#070707",
		line = "#1a1a1a",
		comment = "#555555",
		string = "#87af87",
		keyword = "#a1a1a1",
	},
})

require("koda").setup({
	transparent = true,
})

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "retrobox",
	callback = function()
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
})

vim.cmd.colorscheme("koda-dark")

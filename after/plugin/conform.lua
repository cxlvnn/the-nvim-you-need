local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		blade = { "blade-formatter" },
		lua = { "stylua" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		vue = { "prettierd", "prettier", stop_after_first = true },
		php = { "pint" },
		python = { "black" },
	},
	format_on_save = false,
})

-- The Keymap: <leader>f
vim.keymap.set({ "n", "v" }, "<leader>f", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format buffer" })

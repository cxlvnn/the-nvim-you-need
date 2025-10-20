return {
	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- vague 2k colorscheme
	{
		"vague2k/vague.nvim",
		lazy = false,
		priority = 1000,
	},

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
	},

	-- undotree
	{ "mbbill/undotree" },

	-- neo-tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
	},

	-- Main LSP config
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"mason-org/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			{ "j-hui/fidget.nvim", opts = {} },
			"saghen/blink.cmp", -- needed for LSP capabilities
		},
		config = function()
			-- All your LSP attach functions, diagnostic setup, server setup here
			-- You can copy your previous config here directly
		end,
	},

	-- Optional: autoformatter
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_format = "fallback" })
				end,
				desc = "[F]ormat buffer",
			},
		},
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				local disable_filetypes = { c = true, cpp = true }
				if disable_filetypes[vim.bo[bufnr].filetype] then
					return nil
				end
				return { timeout_ms = 500, lsp_format = "fallback" }
			end,
			formatters_by_ft = { lua = { "stylua" } },
		},
	},

	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				-- load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
}

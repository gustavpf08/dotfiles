return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "jdtls", "gopls", "pyright", "ts_ls", "bashls" },
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-lspconfig.nvim",
		},
		config = function()
			vim.defer_fn(function()
				vim.lsp.enable({
					"lua_ls",
					"pyright",
					"ts_ls",
					"jdtls",
					"gopls",
					"pyright",
					"bashls",
				})
			end, 50)

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
		end,
	},
}

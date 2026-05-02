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
			require("mason-lspconfig").setup()
		end,
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-lspconfig.nvim",
		},
		config = function()
			-- só ativa depois de tudo carregado
			vim.defer_fn(function()
				vim.lsp.enable({
					"lua_ls",
					"pyright",
					"ts_ls",
				})
			end, 50)
		end,
	},
}

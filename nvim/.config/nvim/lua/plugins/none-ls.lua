return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.google_java_format,
				null_ls.builtins.diagnostics.checkstyle,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format Code" })
	end,
}

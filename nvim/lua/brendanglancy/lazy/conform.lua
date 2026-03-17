return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			log_level = vim.log.levels.DEBUG,
			notify_on_error = true,
			formatters_by_ft = {
				lua = { "stylua" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				json = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 3000,
				lsp_fallback = false,
			},
		})
	end,
}

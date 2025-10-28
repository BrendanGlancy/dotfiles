return {
	{
		dir = "~/personal/typst-preview",
		name = "typst-preview",
		config = function()
			local tp = require("typst-preview")
			tp.setup({})
			vim.keymap.set("n", "<leader>tp", function()
				tp.preview()
			end)
			vim.keymap.set("n", "<leader>tc", function()
				tp.close_preview()
			end)
		end,
	},
}

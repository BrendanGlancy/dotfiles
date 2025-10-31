return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
		vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>")

		local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})

		local autocmd = vim.api.nvim_create_autocmd
		autocmd("BufWinEnter", {
			group = ThePrimeagen_Fugitive,
			pattern = "*",
			callback = function()
				if vim.bo.ft ~= "fugitive" then
					return
				end
			end,
		})

		vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
		vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
	end,
}

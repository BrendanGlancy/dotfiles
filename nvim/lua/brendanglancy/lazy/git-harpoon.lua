return {
	dir = "~/personal/git-harpoon",
	config = function()
		local gh = require("git-harpoon")
		gh.setup({
			base = "test", -- Compare current branch against test
		})

		vim.keymap.set("n", "<leader>gm", gh.toggle_quick_menu)

		for i = 1, 8 do
			vim.keymap.set("n", "<leader>g" .. i, function()
				gh.select(i)
			end)
		end
	end,
}

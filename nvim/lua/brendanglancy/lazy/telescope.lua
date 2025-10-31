return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.5",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = {
					"node_modules/",
					"%.lock",
					"build/",
					"dist/",
					"go%.mod",
					"go%.sum",
				},
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						preview_width = 0.45,
						width = 0.95,
						height = 0.95,
					},
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
		vim.keymap.set("n", "<leader>sr", builtin.lsp_references, {})
		vim.keymap.set("n", "<leader>td", builtin.lsp_type_definitions, {})
		vim.keymap.set("n", "<leader>fw", function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set("n", "<leader>pWs", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set("n", "<leader>fs", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>fz", function()
			local word = vim.fn.expand("<cword>")
			builtin.current_buffer_fuzzy_find({ search = word })
		end)
		vim.keymap.set("n", "<leader>rg", function()
			builtin.live_grep({
				additional_args = function()
					return { "-i" }
				end,
			})
		end)
	end,
}

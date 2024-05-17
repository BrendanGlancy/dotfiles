function ColorMyPencils(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- Set line number colors
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#89ddff" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "none" })

    -- Disable sign column
    vim.wo.signcolumn = "no"
end

return {
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "transparent", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
        end
    },

    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            require('kanagawa').setup({
                disable_background = true,
            })

            vim.cmd("colorscheme kanagawa")

            ColorMyPencils()
        end
    },


}

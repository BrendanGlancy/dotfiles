return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },

    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },

    -- "github/copilot.vim",
    "eandrju/cellular-automaton.nvim",
    "luarocks/luarocks",
    "gpanders/editorconfig.nvim",
    "rest-nvim/rest.nvim",
}

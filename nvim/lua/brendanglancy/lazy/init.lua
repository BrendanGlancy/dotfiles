return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },

    {
        "wakatime/vim-wakatime",
        lazy = false,
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

    "eandrju/cellular-automaton.nvim",
}

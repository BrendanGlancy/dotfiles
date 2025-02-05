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

  {
    "wakatime/vim-wakatime",
    lazy = false,
  },
  -- "github/copilot.vim",
  "eandrju/cellular-automaton.nvim",
}

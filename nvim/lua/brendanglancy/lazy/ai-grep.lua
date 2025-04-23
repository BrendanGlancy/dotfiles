return {
    dir = "~/personal/ai-grep",
    name = "ai-grep",
    config = function()
        require("ai-grep").setup({
            keymaps = {
                aigrep = "<leader>ag",
            },
        })
    end,
}

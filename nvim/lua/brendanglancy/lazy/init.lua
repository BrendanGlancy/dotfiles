return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },

    {
        "wakatime/vim-wakatime",
        lazy = false,
    },

    "eandrju/cellular-automaton.nvim",

    -- ssh -R 80:localhost:3000 serveo.net
    -- ssh -R 80:localhost:8080 nokey@localhost.run
    {
        "azratul/live-share.nvim",
        dependencies = {
            "jbyuki/instant.nvim",
        },

        config = function ()
            vim.g.instant_username = 'brendanglancy'
            require("live-share").setup({
                port_internal = 8080,             -- The local port to be used for the live share connection
                max_attempts = 20,                -- Maximum number of attempts to read the URL from service(serveo.net or localhost.run), every 250 ms
                service_url = "/tmp/service.url", -- Path to the file where the URL from serveo.net will be stored
                service = "nokey@localhost.run",  -- Service to use, options are serveo.net or localhost.run
            })
        end
    }

}

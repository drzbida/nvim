return {
    "folke/snacks.nvim",
    opts = {
        image = {
            enabled = true,
            env = {
                SNACKS_WEZTERM = true,
            },
            doc = {
                inline = false,
            },
        },
    },

    keys = {
        {
            "<leader>io",
            function()
                Snacks.image.hover()
            end,
            desc = "Image Hover",
        },
    },
}

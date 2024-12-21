return {
    {
        "nvchad/base46",
        enabled = false,
        build = function()
            require("base46").load_all_highlights()
        end,
    },

    {
        "nvchad/ui",
        enabled = false,
        lazy = false,
        priority = 1000,
        config = function()
            require "nvchad"
        end,
    },

    -- "nvzone/volt",
    -- "nvzone/menu",
    -- { "nvzone/minty", cmd = { "Huefy", "Shades" } },
}

-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local options = {}

options.base46 = {
    theme = "ayu_dark",
    hl_override = {
        ["@function.call"] = {
            bold = true,
        },
        ["@function.method.call"] = {
            bold = true,
        },
    },
    hl_add = {
        ["DiagnosticVirtualTextError"] = {
            fg = "#DB302D",
            bg = "#570F0E",
        },
        ["DiagnosticVirtualTextHint"] = {
            fg = "#29A298",
            bg = "#103A3C",
        },
        ["DiagnosticVirtualTextWarn"] = {
            fg = "#DDB80A",
            bg = "#574A0E",
        },
        ["DiagnosticVirtualTextInfo"] = {
            fg = "#268BD2",
            bg = "#0E2840",
        },
        ["NvimDapVirtualText"] = {
            fg = "#d6ff07",
        },
        ["DapUIExceptionSettingsTitle"] = {
            fg = "#00F1F5",
        },
        ["DapUIExceptionSettingsBreakpointActive"] = {
            fg = "#F70067",
        },
        ["DapUIExceptionSettingsBreakpointInactive"] = {
            fg = "#424242",
        },
    },
    integrations = {
        "defaults",
        "statusline",
        "devicons",
        "git",
        "mason",
        "cmp",
        "lsp",
        "dap",
        "diffview",
        "trouble",
        "syntax",
        "whichkey",
        "treesitter",
    },
}

options.ui = {
    statusline = require "configs.statusline",
    tabufline = {
        enabled = false,
    },
    cmp = {
        style = "default",
        icons_left = true,
    },
}

options.nvdash = {
    load_on_startup = true,
    header = {
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠀⠺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠉⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⠋⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠋⠻⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⡿⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡻⣿⣿⣿⣿⣿⣿",
        "⣿⣿⡿⠛⢻⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⢿⣿⣿⣿⣿",
        "⣿⡟⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿",
        "⣿⠷⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣤⣴⣦⣷⣷⣷⣶⣶⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⠛⣿⣿⣿",
        "⠟⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠻⣿⣿",
        "⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⢿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠋⢹",
        "⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣷⣭⣵⣾⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣾",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣾⣿⣿⣿⣿⣿⣿⣷⣜⢿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⣫⠵⠛⠉⠉⠛⣿⣿⣷⡿⡻⠿⠿⠿⢶⣝⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣿",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠀⠀⢸⣿⣯⡞⠀⠀⠀⠀⠀⠹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣹",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣇⠀⠀⠀⠀⠀⢠⡿⣿⣿⡁⠀⠀⠀⠀⠀⢀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿",
        "⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠖⠦⠤⢶⣶⢏⣴⠏⠻⣷⣤⣤⠤⠀⠠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠛⠟⢿⣿⣿⣿⣏⢀⠀⢸⣿⣿⣿⣿⠿⡳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢦⣿",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⣡⡝⣫⡝⣫⢝⣝⢟⡟⠛⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠇⣿⡇⣿⢸⣿⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿",
        "⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⣄⠀⠈⠀⠉⠀⠈⠁⡀⢤⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿",
        "⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣰⢶⣾⣟⢵⡇⣿⠀⠀⠀⠀⠀⠀⢰⡇⣑⢕⡵⣯⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣦⣴⣿⣿",
        "⣿⣇⢀⠀⠀⠀⠀⠀⣀⣴⣾⣿⣿⣷⣗⣝⣽⣻⣥⣿⠀⠀⠀⠀⠀⠀⢸⢷⣕⢍⢔⣾⣿⣿⣿⣿⣶⣤⣄⡀⠀⠀⠀⠀⢠⣼⣿⣿⣿⣿",
        "⣿⣿⣇⡀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⠀⠀⠀⠀⠀⠀⢸⢸⣵⣷⣿⣾⣿⣿⣿⣿⣿⣿⣿⠿⠓⠀⠀⠀⣴⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣇⣀⠀⠈⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡟⠀⠀⠀⠀⠀⠀⢸⢸⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠁⠀⣠⣠⣤⣶⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⠀⣴⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⡟⣸⠃⠀⠀⠀⠀⠀⠀⠸⡾⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣶⡀⠀⠀⠀⠈⠙⢿⣿⣿⢣⣿⠀⣿⣼⣶⣶⢰⣶⠀⣇⢿⣿⣿⣿⠟⠁⠀⠀⢠⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡶⠄⠀⠀⡠⣻⡯⢑⡙⢶⣤⣍⣤⣋⣬⣤⢔⣑⢿⣿⡟⠁⠀⠀⠠⠾⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⡿⠟⠛⠉⠀⠀⣠⣴⣿⣿⣿⢻⡜⠿⣦⡙⢷⣦⣶⠖⡱⠟⣋⢼⣿⣿⣶⣄⡀⠀⠀⠀⠀⠉⠛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⡇⠿⠿⣥⡌⠉⠀⠈⠀⠀⠀⣪⢱⣾⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿",
        "⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣦⡷⣂⣤⢠⣦⣶⢰⣦⠙⢿⣿⣿⣿⡿⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿",
        "⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⢋⣾⣿⣷⣿⢿⣿⡏⣿⣷⢪⡻⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿",
        "⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⢟⣼⣟⣿⢸⡟⣿⢹⣿⢡⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿",
        "⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⢫⣿⡟⣾⡏⢿⣿⣿⢸⣿⡏⣧⢳⡕⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿",
        "⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⣳⣿⡟⣼⣿⣧⣿⣿⣿⢸⣿⣧⣿⣿⣿⣎⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠠⠛⠛⣱⣿⡟⣼⣿⣿⣸⣿⣿⣿⢸⣿⣿⢿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡿⠹⠋⠈⠡⢹⣿⣿⡿⣸⣿⣿⠸⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠋⠁⠁⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "",
        "",
    },

    buttons = {
        { txt = "  Find File", keys = "ff", cmd = "FzfLua files" },
        { txt = "  Recent Files", keys = "fo", cmd = "FzfLua oldfiles" },
        { txt = "󰈭  Find Word", keys = "fw", cmd = "FzfLua live_grep" },
        {
            txt = "  Load Session",
            keys = "s",
            cmd = ":lua require('persistence').load()",
        },
        { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
        { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },

        { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },

        {
            txt = function()
                local stats = require("lazy").stats()
                local ms = math.floor(stats.startuptime) .. " ms"
                return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
            end,
            hl = "NvDashFooter",
            no_gap = true,
        },

        { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    },
}

return options

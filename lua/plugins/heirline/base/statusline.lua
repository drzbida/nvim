local config = require "nvconfig"
local get_theme_tb = require("base46").get_theme_tb
local colors = get_theme_tb "base_30"

local Align = { provider = "%=" }
local Space = { provider = " " }

local conditions = require "heirline.conditions"

local SpecialStatusline = {
    condition = function()
        return conditions.buffer_matches {
            buftype = { "nofile", "prompt", "help", "quickfix" },
            filetype = { "^git.*", "fugitive" },
        }
    end,

    require "plugins.heirline.components.filetype",
    Space,
    require "plugins.heirline.components.helpfilename",
    Align,
}

local TerminalStatusline = {
    condition = function()
        return conditions.buffer_matches { buftype = { "terminal" } }
    end,

    require "plugins.heirline.components.vimode",
    Space,
    require "plugins.heirline.components.filetype",
    Space,
    require "plugins.heirline.components.termname",
    Align,
}

local DefaultStatusline = {
    require "plugins.heirline.components.vimode",
    Space,
    require "plugins.heirline.components.filename",
    Space,
    require "plugins.heirline.components.git",
    Space,
    Align,
    --
    require "plugins.heirline.components.dapmessages",
    Align,
    --
    require "plugins.heirline.components.fileencoding",
    Space,
    require "plugins.heirline.components.diagnostics",
    Space,
    require "plugins.heirline.components.workdir",
    Space,
    require "plugins.heirline.components.lspactive",
    Space,
}

return {
    hl = {
        bg = config.base46.transparency and "NONE" or colors.statusline_bg,
    },

    fallthrough = false,

    SpecialStatusline,
    TerminalStatusline,
    DefaultStatusline,
}

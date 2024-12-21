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
    require "plugins.heirline.components.git",
    Align,
    --
    require "plugins.heirline.components.macrorec",
    Space,
    require "plugins.heirline.components.dapmessages",
    Align,
    --
    require "plugins.heirline.components.fileencoding",
    Space,
    require "plugins.heirline.components.diagnostics",
    Space,
    require "plugins.heirline.components.lspactive",
    Space,
    require "plugins.heirline.components.workdir",
    Space,
    require "plugins.heirline.components.scrollbar",
}

return {
    hl = function()
        if conditions.is_active() then
            return "StatusLine"
        else
            return "StatusLineNC"
        end
    end,

    fallthrough = false,

    SpecialStatusline,
    TerminalStatusline,
    DefaultStatusline,
}

local conditions = require "heirline.conditions"
local utils = require "heirline.utils"

local FileType = require "plugins.heirline.components.filetype"
local Space = {
    provider = " ",
}

local TerminalName = require "plugins.heirline.components.termname"
local FileNameBlock = require "plugins.heirline.components.filename"

return {
    fallthrough = false,
    {
        condition = function()
            return conditions.buffer_matches { buftype = { "terminal" } }
        end,
        init = function()
            vim.opt_local.winbar = nil
        end,
    },
    {
        condition = function()
            return not conditions.is_active()
        end,
        utils.surround({ "", "" }, "bright_bg", { hl = { fg = "gray", force = true }, FileNameBlock }),
    },
    utils.surround({ "", "" }, "bright_bg", FileNameBlock),
}

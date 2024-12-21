local utils = require "heirline.utils"
local ViMode = {
    init = function(self)
        self.mode = vim.fn.mode(1)
    end,
    static = {
        mode_names = {
            n = "NORMAL",
            no = "NORMAL",
            nov = "NORMAL",
            noV = "NORMAL",
            ["no\22"] = "NORMAL",
            niI = "NORMAL",
            niR = "NORMAL",
            niV = "NORMAL",
            nt = "NTERMINAL",
            ntT = "NTERMINAL",

            v = "VISUAL",
            vs = "VISUAL",
            V = "VISUAL",
            Vs = "VISUAL",

            ["\22"] = "VISUAL",
            ["\22s"] = "VISUAL",

            s = "SELECT",
            S = "SELECT",
            ["\19"] = "SELECT",

            i = "INSERT",
            ic = "INSERT",
            ix = "INSERT",

            R = "REPLACE",
            Rc = "REPLACE",
            Rx = "REPLACE",
            Rv = "REPLACE",
            Rvc = "REPLACE",
            Rvx = "REPLACE",

            c = "COMMAND",
            cv = "COMMAND",
            ce = "COMMAND",
            cr = "COMMAND",

            r = "PROMPT",
            rm = "PROMPT",

            ["r?"] = "CONFIRM",
            ["!"] = "SHELL",
            t = "TERMINAL",
        },
        mode_colors = {
            n = "red",
            i = "green",
            v = "cyan",
            V = "cyan",
            ["\22"] = "cyan",
            c = "orange",
            s = "purple",
            S = "purple",
            ["\19"] = "purple",
            R = "orange",
            r = "orange",
            ["!"] = "red",
            t = "red",
        },
    },
    provider = function(self)
        return " %9(" .. self.mode_names[self.mode] .. "%)"
    end,
    hl = function(self)
        local mode = self.mode:sub(1, 1) -- get only the first mode character
        return { fg = self.mode_colors[mode], bold = true }
    end,
    update = {
        "ModeChanged",
        pattern = "*:*",
        callback = vim.schedule_wrap(function()
            vim.cmd "redrawstatus"
        end),
    },
}
return utils.surround({ "", "" }, "bright_bg", { ViMode })

return {
    "rebelot/heirline.nvim",
    event = "VeryLazy",
    config = function()
        local heirline = require "heirline"
        local conditions = require "heirline.conditions"
        local utils = require "heirline.utils"

        heirline.setup {
            statusline = require "plugins.heirline.base.statusline",
            winbar = nil,
            tabline = {},
            opts = {
                colors = {
                    bright_bg = utils.get_highlight("Folded").bg,
                    bright_fg = utils.get_highlight("Folded").fg,
                    red = utils.get_highlight("DiagnosticError").fg,
                    dark_red = utils.get_highlight("DiffDelete").bg,
                    green = utils.get_highlight("String").fg,
                    blue = utils.get_highlight("Function").fg,
                    gray = utils.get_highlight("NonText").fg,
                    orange = utils.get_highlight("Constant").fg,
                    purple = utils.get_highlight("Statement").fg,
                    cyan = utils.get_highlight("Special").fg,
                    diag_warn = utils.get_highlight("DiagnosticWarn").fg,
                    diag_error = utils.get_highlight("DiagnosticError").fg,
                    diag_hint = utils.get_highlight("DiagnosticHint").fg,
                    diag_info = utils.get_highlight("DiagnosticInfo").fg,
                    git_del = utils.get_highlight("DiffDelete").fg,
                    git_add = utils.get_highlight("DiffAdded").fg,
                    git_change = utils.get_highlight("DiffChange").fg,
                },
                disable_winbar_cb = function(args)
                    return conditions.buffer_matches({
                        buftype = { "nofile", "prompt", "help", "quickfix" },
                        filetype = { "^git.*", "fugitive", "Trouble", "dashboard" },
                    }, args.buf)
                end,
            },
        }
    end,
}

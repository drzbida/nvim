local conditions = require "heirline.conditions"
local utils = require "heirline.utils"

local FileNameBase = {
    init = function(self)
        self.filename = vim.api.nvim_buf_get_name(0)
    end,
}

local FileIcon = {
    init = function(self)
        local filename = self.filename
        local extension = vim.fn.fnamemodify(filename, ":e")
        self.icon, self.icon_color =
            require("nvim-web-devicons").get_icon_color(filename, extension, { default = true })
    end,
    provider = function(self)
        return self.icon and (self.icon .. " ")
    end,
    hl = function(self)
        return { fg = self.icon_color }
    end,
}

local FileName = {
    init = function(self)
        self.lfilename = vim.fn.fnamemodify(self.filename, ":t")
        if self.lfilename == "" then
            self.lfilename = "[No Name]"
        end
    end,
    hl = { fg = utils.get_highlight("Directory").fg },
    provider = function(self)
        return self.lfilename
    end,
}

local FileFlags = {
    {
        condition = function()
            return vim.bo.modified
        end,
        provider = "[+]",
        hl = {
            fg = "green",
        },
    },
    {
        condition = function()
            return not vim.bo.modifiable or vim.bo.readonly
        end,
        provider = "",
        hl = {
            fg = "orange",
        },
    },
}

local FileNameModifier = {
    hl = function()
        if vim.bo.modified then
            return {
                fg = "cyan",
                bold = true,
                force = true,
            }
        end
    end,
}

return utils.insert(FileNameBase, FileIcon, utils.insert(FileNameModifier, FileName), FileFlags, {
    provider = "%<",
})
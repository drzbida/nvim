local lsp_icons = {
    Namespace = "󰌗",
    Text = "󰉿",
    Method = "󰆧",
    Function = "󰆧",
    Constructor = "",
    Field = "󰜢",
    Variable = "󰀫",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "󰑭",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈚",
    Reference = "󰈇",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "󰙅",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "󰊄",
    Table = "",
    Object = "󰅩",
    Tag = "",
    Array = "[]",
    Boolean = "",
    Number = "",
    Null = "󰟢",
    Supermaven = "",
    String = "󰉿",
    Calendar = "",
    Watch = "󰥔",
    Package = "",
    Copilot = "",
    Codeium = "",
    TabNine = "",
    BladeNav = "",
}

--- Configure completion settings
--- @param atom_styled boolean: Whether to use Atom style
--- @param icons_left boolean: Whether to display icons on the left
local cmp_config = function(atom_styled, icons_left)
    local fields = (atom_styled or icons_left) and { "kind", "abbr", "menu" } or { "abbr", "kind", "menu" }
    return {
        formatting = {
            format = function(_, item)
                local icon = lsp_icons[item.kind] or ""
                local kind = item.kind or ""

                if atom_styled then
                    item.menu = kind
                    item.menu_hl_group = "LineNr"
                    item.kind = " " .. icon .. " "
                elseif icons_left then
                    item.menu = kind
                    item.menu_hl_group = "CmpItemKind" .. kind
                    item.kind = icon
                else
                    item.kind = " " .. icon .. " " .. kind
                    item.menu_hl_group = "comment"
                end

                return item
            end,

            fields = fields,
        },

        window = {
            completion = {
                scrollbar = false,
                side_padding = atom_styled and 0 or 1,
                winhighlight = "Normal:CmpPmenu,CursorLine:CmpCompletionSel,Search:None,FloatBorder:CmpBorder",
                border = atom_styled and "none" or "single",
            },

            documentation = {
                border = "single",
                winhighlight = "Normal:CmpDoc,FloatBorder:CmpDocBorder",
            },
        },
    }
end

return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        {
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        },
    },

    opts = function()
        local cmp = require "cmp"
        local options = {
            completion = { completeopt = "menu,menuone" },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            mapping = {
                ["<C-j>"] = require("cmp").mapping.select_next_item { behavior = require("cmp").SelectBehavior.Select },
                ["<C-k>"] = require("cmp").mapping.select_prev_item { behavior = require("cmp").SelectBehavior.Select },
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.close(),
                ["<CR>"] = function(fallback)
                    if require("cmp").visible() then
                        require("cmp").confirm {
                            behavior = require("cmp").ConfirmBehavior.Replace,
                            select = true,
                        }
                    else
                        fallback()
                    end
                end,
            },
            experimental = {
                ghost_text = false,
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "nvim_lua" },
                { name = "path" },
            },
        }
        return vim.tbl_deep_extend("force", options, cmp_config(false, true))
    end,
}

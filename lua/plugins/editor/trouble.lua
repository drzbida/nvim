return {
    "folke/trouble.nvim",
    opts = {
        follow = false,
        preview = {
            type = "float",
            relative = "win",
            border = "rounded",
            title = "Preview",
            title_pos = "left",
            size = { width = 1, height = 0.6 },
            position = { -10, 0 },
            anchor = "SW",
            zindex = 200,
        },
    },
    cmd = "Trouble",
    keys = {
        { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
        {
            "<leader>xX",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        { "<leader>cs", "<cmd>Trouble symbols toggle<cr>", desc = "Symbols (Trouble)" },
        {
            "<leader>cS",
            "<cmd>Trouble lsp toggle<cr>",
            desc = "LSP references/definitions/... (Trouble)",
        },
        { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
        { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
        {
            "[q",
            function()
                if require("trouble").is_open() then
                    require("trouble").prev { skip_groups = true }
                    require("trouble").focus()
                else
                    local ok, err = pcall(vim.cmd.cprev)
                    if not ok then
                        vim.notify(err, vim.log.levels.ERROR)
                    end
                end
            end,
            desc = "Previous Trouble/Quickfix Item",
        },
        {
            "]q",
            function()
                if require("trouble").is_open() then
                    require("trouble").next { skip_groups = true }
                    require("trouble").focus()
                else
                    local ok, err = pcall(vim.cmd.cnext)
                    if not ok then
                        vim.notify(err, vim.log.levels.ERROR)
                    end
                end
            end,
            desc = "Next Trouble/Quickfix Item",
        },
    },
    config = function(_, opts)
        --dofile(vim.g.base46_cache .. "trouble")
        require("trouble").setup(opts)
    end,
}

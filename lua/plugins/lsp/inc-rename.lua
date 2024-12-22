return {
    "smjonas/inc-rename.nvim",
    opts = {},
    keys = {
        {
            "<leader>cr",
            function()
                return ":IncRename " .. vim.fn.expand("<cword>")
            end,
            expr = true,
            mode = "n",
            desc = "LSP Rename",
        }
    }
}

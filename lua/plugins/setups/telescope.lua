return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-telescope/telescope-ui-select.nvim" },
    opts = function()
        dofile(vim.g.base46_cache .. "telescope")
        return {
            defaults = {
                prompt_prefix = "   ",
                selection_caret = " ",
                entry_prefix = " ",
                path_display = { "smart" },
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.55,
                    },
                    width = 0.87,
                    height = 0.80,
                },
                mappings = {
                    n = { ["q"] = require("telescope.actions").close },
                },
            },
            extensions_list = { "themes", "terms" },
            extensions = {},
        }
    end,
    keys = {
        {
            "<leader>gr",
            function()
                require("telescope.builtin").lsp_references()
            end,
            desc = "Find references",
        },
    },
    config = function(_, opts)
        require("telescope").load_extension "ui-select"
        require("telescope").setup(opts)
    end,
}

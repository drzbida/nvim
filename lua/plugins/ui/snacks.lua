return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        lazygit = { enabled = true },
        words = { enabled = true },
        indent = {
            enabled = true,
            animate = {
                enabled = false,
            },
        },
        dashboard = {
            enabled = true,
            preset = {
                keys = {
                    { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    { icon = " ", key = "w", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                    { icon = " ", key = "o", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                    { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                    { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                    { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
                header = [[
                    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠀⠺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠉⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣿⣿⣿⣿⣿⠋⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠋⠻⣿⣿⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣿⣿⡿⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡻⣿⣿⣿⣿⣿⣿
                    ⣿⣿⡿⠛⢻⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⢿⣿⣿⣿⣿
                    ⣿⡟⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿
                    ⣿⠷⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣤⣴⣦⣷⣷⣷⣶⣶⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⠛⣿⣿⣿
                    ⠟⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠻⣿⣿
                    ⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⢿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠋⢹
                    ⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣷⣭⣵⣾⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣾
                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣾⣿⣿⣿⣿⣿⣿⣷⣜⢿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿
                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⣫⠵⠛⠉⠉⠛⣿⣿⣷⡿⡻⠿⠿⠿⢶⣝⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣿
                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠀⠀⢸⣿⣯⡞⠀⠀⠀⠀⠀⠹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣹
                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣇⠀⠀⠀⠀⠀⢠⡿⣿⣿⡁⠀⠀⠀⠀⠀⢀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿
                    ⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠖⠦⠤⢶⣶⢏⣴⠏⠻⣷⣤⣤⠤⠀⠠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻
                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠛⠟⢿⣿⣿⣿⣏⢀⠀⢸⣿⣿⣿⣿⠿⡳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢦⣿
                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⣡⡝⣫⡝⣫⢝⣝⢟⡟⠛⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿
                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠇⣿⡇⣿⢸⣿⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿
                    ⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⣄⠀⠈⠀⠉⠀⠈⠁⡀⢤⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿
                    ⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣰⢶⣾⣟⢵⡇⣿⠀⠀⠀⠀⠀⠀⢰⡇⣑⢕⡵⣯⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣦⣴⣿⣿
                    ⣿⣇⢀⠀⠀⠀⠀⠀⣀⣴⣾⣿⣿⣷⣗⣝⣽⣻⣥⣿⠀⠀⠀⠀⠀⠀⢸⢷⣕⢍⢔⣾⣿⣿⣿⣿⣶⣤⣄⡀⠀⠀⠀⠀⢠⣼⣿⣿⣿⣿
                    ⣿⣿⣇⡀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⠀⠀⠀⠀⠀⠀⢸⢸⣵⣷⣿⣾⣿⣿⣿⣿⣿⣿⣿⠿⠓⠀⠀⠀⣴⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣇⣀⠀⠈⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡟⠀⠀⠀⠀⠀⠀⢸⢸⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠁⠀⣠⣠⣤⣶⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣿⣿⠀⣴⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⡟⣸⠃⠀⠀⠀⠀⠀⠀⠸⡾⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣿⣿⣿⣿⣶⡀⠀⠀⠀⠈⠙⢿⣿⣿⢣⣿⠀⣿⣼⣶⣶⢰⣶⠀⣇⢿⣿⣿⣿⠟⠁⠀⠀⢠⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡶⠄⠀⠀⡠⣻⡯⢑⡙⢶⣤⣍⣤⣋⣬⣤⢔⣑⢿⣿⡟⠁⠀⠀⠠⠾⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣿⣿⡿⠟⠛⠉⠀⠀⣠⣴⣿⣿⣿⢻⡜⠿⣦⡙⢷⣦⣶⠖⡱⠟⣋⢼⣿⣿⣶⣄⡀⠀⠀⠀⠀⠉⠛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿
                    ⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⡇⠿⠿⣥⡌⠉⠀⠈⠀⠀⠀⣪⢱⣾⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿
                    ⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣦⡷⣂⣤⢠⣦⣶⢰⣦⠙⢿⣿⣿⣿⡿⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿
                    ⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⢋⣾⣿⣷⣿⢿⣿⡏⣿⣷⢪⡻⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿
                    ⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⢟⣼⣟⣿⢸⡟⣿⢹⣿⢡⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿
                    ⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⢫⣿⡟⣾⡏⢿⣿⣿⢸⣿⡏⣧⢳⡕⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿
                    ⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⣳⣿⡟⣼⣿⣧⣿⣿⣿⢸⣿⣧⣿⣿⣿⣎⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠠⠛⠛⣱⣿⡟⣼⣿⣿⣸⣿⣿⣿⢸⣿⣿⢿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡿⠹⠋⠈⠡⢹⣿⣿⡿⣸⣿⣿⠸⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿
                    ⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠋⠁⠁⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿
                ]]
            },
            sections = {
                { section = "header" },
                { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                {
                    pane = 2,
                    icon = " ",
                    title = "Git Status",
                    section = "terminal",
                    enabled = function()
                        return Snacks.git.get_root() ~= nil
                    end,
                    cmd = "git status --short --branch --renames",
                    height = 5,
                    padding = 1,
                    ttl = 5 * 60,
                    indent = 3,
                },

                { pane = 2,            section = "keys", gap = 1, padding = 1 },
                { section = "startup", indent = 62 },
            },
        }
    },
    keys = {
        {
            "<leader>go",
            function()
                Snacks.lazygit()
            end,
            desc = "Open Lazygit",
        },
        {
            "<leader>gO",
            function()
                Snacks.gitbrowse()
            end,
            desc = "Open Git Web",
        },
        {
            "<leader>gf",
            function()
                Snacks.lazygit.log_file()
            end,
            desc = "File History",
        },
        {
            "]]",
            function()
                Snacks.words.jump(vim.v.count1)
            end,
            desc = "Next Reference",
            mode = { "n", "t" },
        },
        {
            "[[",
            function()
                Snacks.words.jump(-vim.v.count1)
            end,
            desc = "Prev Reference",
            mode = { "n", "t" },
        },
        {
            "<leader>ns",
            function()
                Snacks.notifier.show_history()
            end,
            desc = "Notification History",
        },
        {
            "<leader>nh",
            function()
                Snacks.notifier.hide()
            end,
            desc = "Dismiss All Notifications",
        },
        {
            "<leader>bo",
            function()
                Snacks.bufdelete.other()
            end,
            desc = "Delete Other Buffers",
        },
        {
            "<leader>bd",
            function()
                Snacks.bufdelete()
            end,
            desc = "Delete Buffer",
        },
        {
            "<C-_>",
            function()
                Snacks.terminal(vim.o.shell, {
                    win = {
                        style = "terminal",
                        width = 0.5,
                        height = 0.5
                    }
                })
            end,
            desc = "Toggle Terminal",
            mode = { "n", "t" },
        }
    },
    init = function()
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                -- Setup some globals for debugging (lazy-loaded)
                _G.dd = function(...)
                    Snacks.debug.inspect(...)
                end
                _G.bt = function()
                    Snacks.debug.backtrace()
                end
                vim.print = _G.dd -- Override print to use snacks for `:=` command

                -- Create some toggle mappings
                Snacks.toggle.option("spell", { name = "Spelling" }):map "<leader>us"
                Snacks.toggle.option("wrap", { name = "Wrap" }):map "<leader>uw"
                Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map "<leader>uL"
                Snacks.toggle.diagnostics():map "<leader>ud"
                Snacks.toggle.line_number():map "<leader>ul"
                Snacks.toggle
                    .option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
                    :map "<leader>uc"
                Snacks.toggle.treesitter():map "<leader>uT"
                Snacks.toggle
                    .option("background", { off = "light", on = "dark", name = "Dark Background" })
                    :map "<leader>ub"
                Snacks.toggle.inlay_hints():map "<leader>uh"
                Snacks.toggle.indent():map "<leader>ug"
                Snacks.toggle.dim():map "<leader>uD"
                Snacks.toggle.zoom():map("<leader>wm"):map "<leader>uz"
            end,
        })
    end,
}

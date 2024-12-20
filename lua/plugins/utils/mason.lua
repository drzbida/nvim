return {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
    opts = function()
        dofile(vim.g.base46_cache .. "mason")
        return {
            PATH = "skip",

            ui = {
                icons = {
                    package_pending = " ",
                    package_installed = " ",
                    package_uninstalled = " ",
                },
            },

            max_concurrent_installers = 10,
            ensure_installed = {
                -- lua
                "lua-language-server",
                "stylua",

                -- webdev
                "html-lsp",
                "css-lsp",
                "prettier",
                "typescript-language-server",
                "eslint_d",
                "angular-language-server",
                "js-debug-adapter",

                -- python
                "basedpyright",
                "debugpy",
                "ruff",

                -- scripting
                "bash-language-server",

                -- godot
                "gdscript",
                "godot_resource",
                "gdshader",

                -- .net
                "roslyn",
                -- "netcoredbg",

                -- rust
                "rust-analyzer",
                "codelldb",
            },
        }
    end,
}

return {
    "saghen/blink.cmp",
    -- dir = "D:/Dev/neovim-plugins/blink.cmp/",
    dependencies = {
        "rafamadriz/friendly-snippets",
        "echasnovski/mini.nvim",
    },

    -- use a release tag to download pre-built binaries
    version = "*",
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = "cargo build --release",
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "enter",
            ["<C-k>"] = { "select_prev", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
        },

        appearance = {
            use_nvim_cmp_as_default = false,
            -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = "mono",
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
            min_keyword_length = function(ctx)
                -- only applies when typing a command, doesn't apply to arguments
                if ctx.mode == "cmdline" and string.find(ctx.line, " ") == nil then
                    return 2
                end
                return 0
            end,
        },
        completion = {
            list = {
                selection = {
                    preselect = true,
                    auto_insert = false,
                },
            },
            accept = {
                auto_brackets = {
                    enabled = true,
                },
                resolve_timeout_ms = 1000,
            },
            menu = {
                border = "single",
                draw = {
                    components = {
                        kind_icon = {
                            ellipsis = false,
                            text = function(ctx)
                                local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                                return kind_icon
                            end,
                            -- Optionally, you may also use the highlights from mini.icons
                            highlight = function(ctx)
                                local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
                                return hl
                            end,
                        },
                    },
                },
            },
            documentation = {
                auto_show = true,
                window = { border = "single" },
            },
        },
        signature = { enabled = true, window = { border = "single" } },
    },
    opts_extend = { "sources.default" },
}

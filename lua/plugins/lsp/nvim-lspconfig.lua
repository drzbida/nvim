local diagnostic_config = function()
    local x = vim.diagnostic.severity

    vim.diagnostic.config {
        virtual_text = { prefix = "" },
        signs = { text = { [x.ERROR] = "󰅙", [x.WARN] = "", [x.INFO] = "󰋼", [x.HINT] = "󰌵" } },
        underline = true,
        float = { border = "single" },
    }

    -- Default border style
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    ---@diagnostic disable-next-line: duplicate-set-field
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        ---@diagnostic disable-next-line: inject-field
        opts.border = "rounded"
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end
end

return {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    config = function()
        diagnostic_config()


        local defaults = require "plugins.lsp.configs.defaults"

        local function default_config()
            return {
                on_attach = defaults.on_attach,
                on_init = defaults.on_init,
                capabilities = defaults.capabilities,
            }
        end

        local merge = require("helpers").merge

        local servers = {
            "html",
            "cssls",
            "ts_ls",
            "angularls",
            "basedpyright",
            "gdscript",
            "bashls",
            "ruff",
            "lua_ls",
        }

        local lspconfig = require "lspconfig"

        for _, lsp in ipairs(servers) do
            local ok, server_config = pcall(require, "plugins.lsp.configs." .. lsp)
            if ok then
                local config = merge(default_config(), server_config)
                lspconfig[lsp].setup(config)
            else
                vim.notify(lsp .. " configuration could not be loaded", vim.log.levels.ERROR)
            end
        end
    end,
}

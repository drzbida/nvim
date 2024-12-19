return {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    config = function()
        dofile(vim.g.base46_cache .. "lsp")
        require("nvchad.lsp").diagnostic_config()

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
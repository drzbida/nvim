local M = {}
local map = vim.keymap.set
local api = vim.api

local function setup_signature(client, bufnr)
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = "rounded",
        focusable = false,
        silent = true,
        max_height = 7,
    })

    local function check_triggeredChars(triggerChars)
        local cur_line = api.nvim_get_current_line()
        local pos = api.nvim_win_get_cursor(0)[2]
        local prev_char = cur_line:sub(pos - 1, pos - 1)
        local cur_char = cur_line:sub(pos, pos)

        for _, char in ipairs(triggerChars) do
            if cur_char == char or prev_char == char then
                return true
            end
        end
    end
    local group = api.nvim_create_augroup("LspSignature", { clear = false })
    api.nvim_clear_autocmds { group = group, buffer = bufnr }

    local triggerChars = client.server_capabilities.signatureHelpProvider.triggerCharacters

    api.nvim_create_autocmd("TextChangedI", {
        group = group,
        buffer = bufnr,
        callback = function()
            if check_triggeredChars(triggerChars) then
                vim.lsp.buf.signature_help()
            end
        end,
    })
end

M.on_attach = function(client, bufnr)
    setup_signature(client, bufnr)
    local function opts(desc)
        return { buffer = bufnr, desc = "LSP " .. desc }
    end

    map("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration")
    map("n", "gd", vim.lsp.buf.definition, opts "Go to definition")
    map("n", "gi", vim.lsp.buf.implementation, opts "Go to implementation")

    map("n", "gr", vim.lsp.buf.references, opts "Show references")

    require("nvim-navic").attach(client, bufnr)
end

M.on_init = function(client, _)
    if client.supports_method "textDocument/semanticTokens" then
        client.server_capabilities.semanticTokensProvider = nil
    end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
    documentationFormat = { "markdown", "plaintext" },
    snippetSupport = true,
    preselectSupport = true,
    insertReplaceSupport = true,
    labelDetailsSupport = true,
    deprecatedSupport = true,
    commitCharactersSupport = true,
    tagSupport = { valueSet = { 1 } },
    resolveSupport = {
        properties = {
            "documentation",
            "detail",
            "additionalTextEdits",
        },
    },
}

return M

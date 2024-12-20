local map = vim.keymap.set

-- WINDOW MANAGEMENT
map({ "n", "v" }, "<C-Left>", "<C-W>>", { desc = "Increase window to left" })
map({ "n", "v" }, "<C-Right>", "<C-W><", { desc = "Increase window to right" })
map({ "n", "v" }, "<C-Up>", "<C-W>+", { desc = "Increase window to up" })
map({ "n", "v" }, "<C-Down>", "<C-W>-", { desc = "Increase window to down" })

map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

-- OVERWRITE VIM BEHAVIOUR
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General clear highlights" })
map("t", "<leader><Esc>", "<C-\\><C-N>", { desc = "Escape terminal mode" })

-- NVCHAD KEYBINDS
map("i", "<C-c>", function()
    if vim.bo.buftype ~= "terminal" then
        require("minty.huefy").open()
    end
end, { noremap = true, silent = true })

map("n", "<leader>ut", function()
    require("nvchad.themes").open()
end, { desc = "Select theme" })

-- SPAWN TERMINAL KEYBINDS
map("n", "<leader><leader>s", function()
    require("nvchad.term").new {
        pos = "sp",
    }
end, { noremap = true, silent = true, desc = "Spawn Horizontal Terminal" })

map("n", "<leader><leader>v", function()
    require("nvchad.term").new {
        pos = "vsp",
        size = 0.3,
    }
end, { noremap = true, silent = true, desc = "Spawn Vertical Terminal" })

map({ "n", "t" }, "<C-_>", function()
    require("nvchad.term").toggle {
        pos = "float",
    }
end, { noremap = true, silent = true, desc = "Toggle Floating Terminal" })

-- COMMENT
map("n", "<leader>/", "gcc", { desc = "Comment Code", remap = true })
map("v", "<leader>/", "gc", { desc = "Comment Code", remap = true })

-- TABS
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- QUIT
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

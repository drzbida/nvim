# Installation
- Windows

```powershell
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
git clone https://github.com/drzbida/nvim $env:LOCALAPPDATA\nvim
```
- Linux / MacOS

```shell
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/drzbida/nvim ~/.config/nvim
```
- Try in Docker
```powershell
docker run -w /root -it --rm alpine:edge sh -uelic '
  apk add git lazygit fzf curl neovim ripgrep alpine-sdk --update
  git clone https://github.com/drzbida/nvim ~/.config/nvim
  cd ~/.config/nvim
  nvim
'
```

# Packages
## 📌 [mason.nvim](https://github.com/williamboman/mason.nvim.git) ![Stars](https://img.shields.io/github/stars/williamboman/mason.nvim?style=flat)
- **Author**: williamboman
- **About**: Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters.
  - **[angular-language-server](https://angular.io/guide/language-service)** 
  - **[basedpyright](https://detachhead.github.io/basedpyright)** 
  - **[bash-language-server](https://github.com/bash-lsp/bash-language-server)** ![Stars](https://img.shields.io/github/stars/bash-lsp/bash-language-server?style=flat)
    - **Author**: bash-lsp
    - **About**: A language server for Bash
  - **[css-lsp](https://github.com/microsoft/vscode-css-languageservice)** ![Stars](https://img.shields.io/github/stars/microsoft/vscode-css-languageservice?style=flat)
    - **Author**: microsoft
    - **About**: CSS, LESS & SCSS language service extracted from VSCode to be reused, e.g in the Monaco editor.
  - **[debugpy](https://github.com/microsoft/debugpy)** ![Stars](https://img.shields.io/github/stars/microsoft/debugpy?style=flat)
    - **Author**: microsoft
    - **About**: An implementation of the Debug Adapter Protocol for Python
  - **[eslint_d](https://github.com/mantoni/eslint_d.js)** ![Stars](https://img.shields.io/github/stars/mantoni/eslint_d.js?style=flat)
    - **Author**: mantoni
    - **About**: 🪄 Speed up eslint to accelerate your development workflow
  - **[html-lsp](https://github.com/microsoft/vscode-html-languageservice)** ![Stars](https://img.shields.io/github/stars/microsoft/vscode-html-languageservice?style=flat)
    - **Author**: microsoft
    - **About**: Language services for HTML
  - **[js-debug-adapter](https://github.com/microsoft/vscode-js-debug)** ![Stars](https://img.shields.io/github/stars/microsoft/vscode-js-debug?style=flat)
    - **Author**: microsoft
    - **About**: A DAP-compatible JavaScript debugger. Used in VS Code, VS, + more
  - **[lua-language-server](https://github.com/LuaLS/lua-language-server)** ![Stars](https://img.shields.io/github/stars/LuaLS/lua-language-server?style=flat)
    - **Author**: LuaLS
    - **About**: A language server that offers Lua language support - programmed in Lua
  - **[prettier](https://prettier.io)** 
  - **[roslyn](https://github.com/dotnet/roslyn)** ![Stars](https://img.shields.io/github/stars/dotnet/roslyn?style=flat)
    - **Author**: dotnet
    - **About**: The Roslyn .NET compiler provides C# and Visual Basic languages with rich code analysis APIs.
  - **[ruff](https://github.com/astral-sh/ruff)** ![Stars](https://img.shields.io/github/stars/astral-sh/ruff?style=flat)
    - **Author**: astral-sh
    - **About**: An extremely fast Python linter and code formatter, written in Rust.
  - **[stylua](https://github.com/JohnnyMorganz/StyLua)** ![Stars](https://img.shields.io/github/stars/JohnnyMorganz/StyLua?style=flat)
    - **Author**: JohnnyMorganz
    - **About**: A Lua code formatter
  - **[typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)** ![Stars](https://img.shields.io/github/stars/typescript-language-server/typescript-language-server?style=flat)
    - **Author**: typescript-language-server
    - **About**: TypeScript & JavaScript Language Server
## [cmp-buffer](https://github.com/hrsh7th/cmp-buffer.git) ![Stars](https://img.shields.io/github/stars/hrsh7th/cmp-buffer?style=flat)
- **Author**: hrsh7th
- **About**: nvim-cmp source for buffer words
## [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp.git) ![Stars](https://img.shields.io/github/stars/hrsh7th/cmp-nvim-lsp?style=flat)
- **Author**: hrsh7th
- **About**: nvim-cmp source for neovim builtin LSP client
## [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua.git) ![Stars](https://img.shields.io/github/stars/hrsh7th/cmp-nvim-lua?style=flat)
- **Author**: hrsh7th
- **About**: nvim-cmp source for nvim lua
## [cmp-path](https://github.com/hrsh7th/cmp-path.git) ![Stars](https://img.shields.io/github/stars/hrsh7th/cmp-path?style=flat)
- **Author**: hrsh7th
- **About**: nvim-cmp source for path
## [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip.git) ![Stars](https://img.shields.io/github/stars/saadparwaiz1/cmp_luasnip?style=flat)
- **Author**: saadparwaiz1
- **About**: luasnip completion source for nvim-cmp
## [conform.nvim](https://github.com/stevearc/conform.nvim.git) ![Stars](https://img.shields.io/github/stars/stevearc/conform.nvim?style=flat)
- **Author**: stevearc
- **About**: Lightweight yet powerful formatter plugin for Neovim
## [copilot.lua](https://github.com/zbirenbaum/copilot.lua.git) ![Stars](https://img.shields.io/github/stars/zbirenbaum/copilot.lua?style=flat)
- **Author**: zbirenbaum
- **About**: Fully featured & enhanced replacement for copilot.vim complete with API for interacting with Github Copilot
## [diffview.nvim](https://github.com/sindrets/diffview.nvim.git) ![Stars](https://img.shields.io/github/stars/sindrets/diffview.nvim?style=flat)
- **Author**: sindrets
- **About**: Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
## [friendly-snippets](https://github.com/rafamadriz/friendly-snippets.git) ![Stars](https://img.shields.io/github/stars/rafamadriz/friendly-snippets?style=flat)
- **Author**: rafamadriz
- **About**: Set of preconfigured snippets for different languages. 
## [fzf-lua](https://github.com/ibhagwan/fzf-lua.git) ![Stars](https://img.shields.io/github/stars/ibhagwan/fzf-lua?style=flat)
- **Author**: ibhagwan
- **About**: Improved fzf.vim written in lua
## [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim.git) ![Stars](https://img.shields.io/github/stars/lewis6991/gitsigns.nvim?style=flat)
- **Author**: lewis6991
- **About**: Git integration for buffers
## [heirline.nvim](https://github.com/rebelot/heirline.nvim.git) ![Stars](https://img.shields.io/github/stars/rebelot/heirline.nvim?style=flat)
- **Author**: rebelot
- **About**: Heirline.nvim is a no-nonsense Neovim Statusline plugin designed around recursive inheritance to be exceptionally fast and versatile.
## [inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim.git) ![Stars](https://img.shields.io/github/stars/smjonas/inc-rename.nvim?style=flat)
- **Author**: smjonas
- **About**: Incremental LSP renaming based on Neovim's command-preview feature.
## [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim.git) ![Stars](https://img.shields.io/github/stars/rebelot/kanagawa.nvim?style=flat)
- **Author**: rebelot
- **About**: NeoVim dark colorscheme inspired by the colors of the famous painting by Katsushika Hokusai.
## [lazy.nvim](https://github.com/folke/lazy.nvim.git) ![Stars](https://img.shields.io/github/stars/folke/lazy.nvim?style=flat)
- **Author**: folke
- **About**: 💤 A modern plugin manager for Neovim
## [LuaSnip](https://github.com/L3MON4D3/LuaSnip.git) ![Stars](https://img.shields.io/github/stars/L3MON4D3/LuaSnip?style=flat)
- **Author**: L3MON4D3
- **About**: Snippet Engine for Neovim written in Lua.
## [minty](https://github.com/nvzone/minty.git) ![Stars](https://img.shields.io/github/stars/nvzone/minty?style=flat)
- **Author**: nvzone
- **About**: Most Beautifully crafted color tools for Neovim 
## [noice.nvim](https://github.com/folke/noice.nvim.git) ![Stars](https://img.shields.io/github/stars/folke/noice.nvim?style=flat)
- **Author**: folke
- **About**: 💥 Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
## [nui.nvim](https://github.com/MunifTanjim/nui.nvim.git) ![Stars](https://img.shields.io/github/stars/MunifTanjim/nui.nvim?style=flat)
- **Author**: MunifTanjim
- **About**: UI Component Library for Neovim.
## [nvim-autopairs](https://github.com/windwp/nvim-autopairs.git) ![Stars](https://img.shields.io/github/stars/windwp/nvim-autopairs?style=flat)
- **Author**: windwp
- **About**: autopairs for neovim written in lua
## [nvim-cmp](https://github.com/hrsh7th/nvim-cmp.git) ![Stars](https://img.shields.io/github/stars/hrsh7th/nvim-cmp?style=flat)
- **Author**: hrsh7th
- **About**: A completion plugin for neovim coded in Lua.
## [nvim-dap](https://github.com/mfussenegger/nvim-dap.git) ![Stars](https://img.shields.io/github/stars/mfussenegger/nvim-dap?style=flat)
- **Author**: mfussenegger
- **About**: Debug Adapter Protocol client implementation for Neovim
## [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui.git) ![Stars](https://img.shields.io/github/stars/rcarriga/nvim-dap-ui?style=flat)
- **Author**: rcarriga
- **About**: A UI for nvim-dap
## [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text.git) ![Stars](https://img.shields.io/github/stars/theHamsta/nvim-dap-virtual-text?style=flat)
- **Author**: theHamsta
- **About**: 
## [nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors.git) ![Stars](https://img.shields.io/github/stars/brenoprata10/nvim-highlight-colors?style=flat)
- **Author**: brenoprata10
- **About**: Highlight colors for neovim
## [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig.git) ![Stars](https://img.shields.io/github/stars/neovim/nvim-lspconfig?style=flat)
- **Author**: neovim
- **About**: Quickstart configs for Nvim LSP
## [nvim-navic](https://github.com/SmiteshP/nvim-navic.git) ![Stars](https://img.shields.io/github/stars/SmiteshP/nvim-navic?style=flat)
- **Author**: SmiteshP
- **About**: Simple winbar/statusline plugin that shows your current code context
## [nvim-nio](https://github.com/nvim-neotest/nvim-nio.git) ![Stars](https://img.shields.io/github/stars/nvim-neotest/nvim-nio?style=flat)
- **Author**: nvim-neotest
- **About**: A library for asynchronous IO in Neovim
## [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua.git) ![Stars](https://img.shields.io/github/stars/nvim-tree/nvim-tree.lua?style=flat)
- **Author**: nvim-tree
- **About**: A file explorer tree for neovim written in lua
## [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter.git) ![Stars](https://img.shields.io/github/stars/nvim-treesitter/nvim-treesitter?style=flat)
- **Author**: nvim-treesitter
- **About**: Nvim Treesitter configurations and abstraction layer
## [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects.git) ![Stars](https://img.shields.io/github/stars/nvim-treesitter/nvim-treesitter-textobjects?style=flat)
- **Author**: nvim-treesitter
- **About**: 
## [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons.git) ![Stars](https://img.shields.io/github/stars/nvim-tree/nvim-web-devicons?style=flat)
- **Author**: nvim-tree
- **About**: Provides Nerd Font icons (glyphs) for use by neovim plugins
## [overseer.nvim](https://github.com/stevearc/overseer.nvim.git) ![Stars](https://img.shields.io/github/stars/stevearc/overseer.nvim?style=flat)
- **Author**: stevearc
- **About**: A task runner and job management plugin for Neovim
## [persistence.nvim](https://github.com/folke/persistence.nvim.git) ![Stars](https://img.shields.io/github/stars/folke/persistence.nvim?style=flat)
- **Author**: folke
- **About**: 💾  Simple session management for Neovim
## [plenary.nvim](https://github.com/nvim-lua/plenary.nvim.git) ![Stars](https://img.shields.io/github/stars/nvim-lua/plenary.nvim?style=flat)
- **Author**: nvim-lua
- **About**: plenary: full; complete; entire; absolute; unqualified. All the lua functions I don't want to write twice.
## [roslyn.nvim](https://github.com/seblj/roslyn.nvim.git) ![Stars](https://img.shields.io/github/stars/seblj/roslyn.nvim?style=flat)
- **Author**: seblj
- **About**: Roslyn LSP plugin for neovim
## [snacks.nvim](https://github.com/folke/snacks.nvim.git) ![Stars](https://img.shields.io/github/stars/folke/snacks.nvim?style=flat)
- **Author**: folke
- **About**: 🍿 A collection of small QoL plugins for Neovim
## [trouble.nvim](https://github.com/folke/trouble.nvim.git) ![Stars](https://img.shields.io/github/stars/folke/trouble.nvim?style=flat)
- **Author**: folke
- **About**: 🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
## [venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim.git) ![Stars](https://img.shields.io/github/stars/linux-cultist/venv-selector.nvim?style=flat)
- **Author**: linux-cultist
- **About**: Allows selection of python virtual environment from within neovim
## [volt](https://github.com/nvzone/volt.git) ![Stars](https://img.shields.io/github/stars/nvzone/volt?style=flat)
- **Author**: nvzone
- **About**: Plugin for creating reactive UI  in neovim
## [which-key.nvim](https://github.com/folke/which-key.nvim.git) ![Stars](https://img.shields.io/github/stars/folke/which-key.nvim?style=flat)
- **Author**: folke
- **About**: 💥   Create key bindings that stick. WhichKey helps you remember your Neovim keymaps, by showing available keybindings in a popup as you type.
## [yazi.nvim](https://github.com/mikavilpas/yazi.nvim.git) ![Stars](https://img.shields.io/github/stars/mikavilpas/yazi.nvim?style=flat)
- **Author**: mikavilpas
- **About**: A Neovim Plugin for the yazi terminal file manager

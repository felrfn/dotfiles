# Neovim Configuration

A modern, modular Neovim setup powered by **LazyVim**, designed for productivity, aesthetics, and extensibility. This configuration includes a rich set of plugins for LSP, formatting, file management, and more.

---

## Features

- ⚡ Fast startup with LazyVim
- 🎨 Beautiful UI with **Kanagawa** color scheme
- 🔍 Fuzzy finder powered by **Telescope**
- 🧠 Language Server Protocol support with **mason.nvim** and **lspconfig**
- 📁 File explorer via **neo-tree.nvim**
- 🌳 Syntax-aware code highlighting via **Treesitter**
- 📊 Coding stats tracking with **Wakatime**
- 🔧 Linters and formatters integrated via **none-ls.nvim**

---

## 📦 Main Plugins & Components

| Plugin / Component | Description                                                    | Config File                              |
| ------------------ | -------------------------------------------------------------- | ---------------------------------------- |
| `alpha-nvim`       | Interactive startup screen with ASCII art.                     | `dashboard.lua`, `startpage-headers.lua` |
| `kanagawa.nvim`    | Kanagawa Dragon color scheme.                                  | `colorscheme.lua`                        |
| `lspconfig`        | Core LSP client configuration.                                 | `lsp.lua`                                |
| `mason.nvim`       | Manages language servers, linters, and formatters.             | `lsp.lua`                                |
| `mason-lspconfig`  | Connects Mason to `lspconfig`.                                 | `lsp.lua`                                |
| `neo-tree.nvim`    | File explorer/tree view.                                       | `neo-tree.lua`                           |
| `none-ls.nvim`     | Runs formatters/linters like `prettier`, `black`, `goimports`. | `none-ls.lua`                            |
| `nvim-treesitter`  | Advanced syntax highlighting and code structure awareness.     | `treesitter.lua`                         |
| `telescope.nvim`   | Fuzzy finding for files, text, buffers, etc.                   | `telescope.lua`                          |
| `wakatime-nvim`    | Automatic coding activity tracking.                            | `wakatime.lua` _(assumed)_               |
| **Keymaps**        | Custom keyboard shortcuts.                                     | `keymaps.lua`                            |
| **Options**        | Core Neovim settings (line numbers, tabs, etc).                | `options.lua`                            |

---

## 🧩 Custom Modules & Utilities

| File                    | Purpose                                                      |
| ----------------------- | ------------------------------------------------------------ |
| `startpage-headers.lua` | ASCII art headers for the dashboard screen.                  |
| `toggle.lua`            | Toggle functionality for diagnostics, line numbers, etc.     |
| `util.lua`              | Helper utilities (e.g., close buffer, toggle Neo-tree).      |
| `icons.lua`             | Icon set used across UI (file types, diagnostics, etc.).     |
| `diagnostic.lua`        | Custom styling for LSP diagnostics (errors, warnings, info). |

---

## 📚 Keybindings

See [Keybindings Cheatsheet](./cheatsheet.md) for a complete list of custom shortcuts.

Examples:

- `<leader>ff`: Find file (Telescope)
- `<leader>n`: Toggle file explorer (Neo-tree)
- `<leader>o` / `<leader>O`: Add new line below/above (Normal mode)
- `<leader>ca`: LSP code actions
- `gd`: Go to definition

---

## 📥 Getting Started

> ⚠️ Requires Neovim 0.9+ and a terminal with Nerd Font support.

## ✅ Recommended Tools

To maximize functionality, install the following tools (via your system package manager or Mason):

- LSP Servers: `lua_ls`, `gopls`, `tsserver`, etc.
- Formatters: `prettier`, `stylua`, `black`, `goimports`
- Linters: `eslint`, `flake8`, etc.


## Credits
Built with [LazyVim](https://www.lazyvim.org/) and a curated set of plugins.


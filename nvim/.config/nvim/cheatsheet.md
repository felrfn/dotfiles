# ⌨️ Keymaps
**Reference**: [LazyVim default keymaps](https://www.lazyvim.org/keymaps) 

**Leader key**: `<Space>`  
**Local leader**: `\`

---

## Mode Switching

| Key    | Mode | Description              |
|--------|------|--------------------------|
| `jj`   | i    | Exit to normal mode      |
| `jk`   | i    | Exit to normal mode      |
| `jj`   | t    | Exit terminal mode       |

---

## Quit

| Key         | Mode | Description             |
|-------------|------|-------------------------|
| `<leader>qa`| n    | Quit all tabs           |
| `<leader>qq`| n,t  | Quit current window     |
| `<leader>Q` | n    | Force quit (ZQ)         |

---

## Clipboard

| Key         | Mode | Description                  |
|-------------|------|------------------------------|
| `<leader>y` | n,v  | Copy to system clipboard     |
| `<leader>p` | n,v  | Paste from system clipboard  |

---

## Tabs

| Key         | Mode | Description          |
|-------------|------|----------------------|
| `<leader>to`| n    | Open new tab         |
| `<leader>tx`| n    | Close current tab    |

---

## Redo

| Key         | Mode | Description |
|-------------|------|-------------|
| `<leader>r` | n    | Redo        |

---

## Window Management

| Key         | Mode | Description             |
|-------------|------|-------------------------|
| `<leader>sv`| n    | Vertical split          |
| `<leader>sh`| n    | Horizontal split        |
| `<leader>h` | n    | Focus left window       |
| `<leader>j` | n    | Focus bottom window     |
| `<leader>k` | n    | Focus top window        |
| `<leader>l` | n    | Focus right window      |

---

## Insert Empty Lines

| Key         | Mode | Description                 |
|-------------|------|-----------------------------|
| `<leader>o` | n    | Insert line below (normal o)|
| `<leader>O` | n    | Insert line above (normal O)|

---

## LSP (Language Server Protocol)

| Key         | Mode | Description          |
|-------------|------|----------------------|
| `K`         | n    | Show hover info      |
| `gd`        | n    | Go to definition     |
| `<leader>ca`| n,v  | Code action          |
| `<leader>gf`| n    | Format buffer        |

---

## File Explorer

| Key         | Mode | Description        |
|-------------|------|--------------------|
| `<leader>n` | n    | Toggle NeoTree      |

---

## Telescope

| Key         | Mode | Description            |
|-------------|------|------------------------|
| `<leader>ff`| n    | Find files             |
| `<leader>fg`| n    | Live grep              |
| `<leader>fb`| n    | Find buffers           |
| `<leader>fh`| n    | Find help tags         |
| `<C-p>`     | n    | Find projects (Telescope) |
| `:TelescopeProjects` | cmd | Open project picker |

---

## Telescope Project Actions

| Key | Mode | Description                   |
|-----|------|-------------------------------|
| `d` | n    | Delete project                |
| `r` | n    | Rename project                |
| `c` | n    | Add project                   |
| `C` | n    | Add project from CWD          |
| `f` | n    | Find project files            |
| `b` | n    | Browse project files          |
| `s` | n    | Search in project files       |
| `R` | n    | Recent project files          |
| `w` | n    | Change working directory      |
| `o` | n    | Next `cd` scope               |

---

## Treesitter (Syntax-aware Selection)

| Key         | Mode | Description                |
|-------------|------|----------------------------|
| `<C-space>` | n,v  | Start/increment selection  |
| `<bs>`      | n,v  | Decrement selection        |

---

## Autocompletion (nvim-cmp)

| Key          | Mode | Description                           |
|--------------|------|---------------------------------------|
| `<C-k>`      | i    | Scroll docs up                        |
| `<C-j>`      | i    | Scroll docs down                      |
| `<C-Space>`  | i    | Trigger completion                    |
| `<C-e>`      | i    | Abort completion                      |
| `<CR>`       | i    | Confirm selection (auto-select item)  |


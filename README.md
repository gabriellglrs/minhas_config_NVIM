<div align="center">

# 💚 Minhas Config NVIM

### Neovim virou IDE fullstack — rápido, lindo e pronto pra PHP • Java • JS/TS • Python • Lua

**lazy.nvim • LSP • Treesitter • Telescope • DAP • Neotest • Catppuccin Mocha**

[![Neovim](https://img.shields.io/badge/Neovim-0.10+-57A143?style=for-the-badge&logo=neovim&logoColor=white)](https://neovim.io)
[![Lua](https://img.shields.io/badge/Lua-5.1-2C2D72?style=for-the-badge&logo=lua&logoColor=white)](https://www.lua.org)
[![Windows](https://img.shields.io/badge/Windows-10%2F11-0078D6?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/windows)
[![lazy.nvim](https://img.shields.io/badge/lazy.nvim-plugin_manager-FF6B6B?style=for-the-badge)](https://github.com/folke/lazy.nvim)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

⭐ Se essa config te ajudou, deixa uma estrela!

[🚀 Instalação](#-instalação-em-1-minuto) • [✨ Features](#-por-que-usar) • [⌨️ Atalhos](#️-atalhos-essenciais) • [🧩 Plugins](#-plugins) • [🛠️ Troubleshooting](#️-problemas-comuns)

</div>

---

## 👀 Preview

![nvim-1](https://github.com/user-attachments/assets/67e65a44-2bbd-4804-98bd-5d9985d18493)
![nvim-2](https://github.com/user-attachments/assets/c7bee5a8-a9d7-4852-b8bf-a89222cc3a63)
![nvim-3](https://github.com/user-attachments/assets/409cd52c-9f47-4a6a-ac70-5b7236491082)

> 💡 Prints em tela cheia. Tema **Catppuccin Mocha** + `lualine` + `bufferline` + `nvim-tree` + `noice`.

---

## ✨ Por que usar?

<table>
<tr>
<td align="center" width="33%">
<h3>⚡ IDE completa</h3>
<b>LSP + completion + format + lint + debug + testes</b> já wired.<br>
<code>gd</code> definition • <code>K</code> hover • <code>&lt;leader&gt;ca</code> fix
</td>
<td align="center" width="33%">
<h3>🔍 Fuzzy everything</h3>
<b>Telescope + harpoon + flash + grug-far</b>.<br>
<code>&lt;leader&gt;ff</code> arquivos • <code>fg</code> texto • <code>s</code> jump
</td>
<td align="center" width="33%">
<h3>🎨 Linda e rápida</h3>
<b>Catppuccin Mocha + lualine + noice + ufo folds</b>.<br>
<code>lazy.nvim</code> com cache + checker.
</td>
</tr>
</table>

### 🧰 Stack por área

| Categoria | O que vem |
|:---|:---|
| 🧠 **LSP** (`mason` + `lspconfig`) | `lua_ls` • `ts_ls` + `typescript-tools` • `eslint` • `html` • `cssls` • `emmet_ls` • `jsonls` • `pyright` • `intelephense` (PHP) • `jdtls` (Java) • `marksman` |
| ✍️ **Completion** | `nvim-cmp` + `LuaSnip` + `friendly-snippets` + `copilot.lua` (`Ctrl+l` aceita) |
| ✨ **Format / Lint** | `conform.nvim` (prettier, stylua, black, php-cs-fixer, google-java-format) + `nvim-lint` (eslint, phpcs, pylint, luacheck) — formata ao salvar |
| 🐛 **Debug / Testes** | `nvim-dap` + `dap-ui` (`<leader>dB/dc/di/do`) • `neotest` (vitest, pytest, cargo) |
| 📁 **Arquivos** | `nvim-tree` (`<leader>e`) + `oil.nvim` (`-`) + `telescope` + `harpoon2` + `undotree` + `grug-far` (find/replace) |
| 🌿 **Git** | `lazygit` (`<leader>gg`) + `gitsigns` (`+`/`~`/`_`) + `diffview` (`<leader>gd/gh`) |
| 🖥️ **IDE** | `toggleterm` float (`Alt+t`) • `treesitter` 24 langs • `aerial` + `dropbar` breadcrumb • `ufo` folds • `flash` • `hop` • `multi-cursor` • `persistence` (sessões) • `legendary` (paleta) |
| 🎨 **Visual** | `catppuccin mocha` • `lualine` • `bufferline` • `noice` + `dressing` + `notify` • `colorizer` • `indent-blankline` + `rainbow` • `scrollbar` • `alpha` dashboard |

> **Leader = `Espaço`**. Quase tudo começa com `<leader>`. Aperte `<leader>fk` pra ver todos os atalhos, ou `<leader>cp` pra paleta `legendary`.

---

## ✅ Pré-requisitos

- **Neovim 0.10+** (ideal 0.11+ — usa `vim.lsp.config`)
- **Git + Node 18+ + Python 3 + PHP 8 + JDK 17+** (só o que você usar)
- **Nerd Font** (ex: FiraCode Nerd Font) + **ripgrep + fd + lazygit**
- Opcional: `npm`, `sqlite` (telescope-undo), `C compiler` (treesitter)

```powershell
# Windows — tudo de uma vez
winget install Neovim.Neovim Git.Git OpenJS.Nodejs Python.Python `
  JesseDuffield.lazygit BurntSushi.ripgrep.MSVC sharkdp.fd
# Nerd Font: baixe FiraCode.zip em https://www.nerdfonts.com e instale
```

---

## 🚀 Instalação em 1 minuto

```powershell
# 1. Backup se já tem nvim
Rename-Item "$env:LOCALAPPDATA\nvim" "$env:LOCALAPPDATA\nvim.bak" -ErrorAction SilentlyContinue

# 2. Clonar essa config
git clone https://github.com/gabriellglrs/minhas_config_NVIM.git "$env:LOCALAPPDATA\nvim"

# 3. Abrir e deixar o lazy instalar tudo
nvim
# aguarde o lazy.nvim terminar, depois:
# :Mason   -> LSPs/formatters instalam sozinhos (automatic_installation)
# :checkhealth, :Lazy sync, :TSUpdate se algo falhar
```

**LSPs auto-instalados:** `lua_ls, ts_ls, eslint, html, cssls, emmet_ls, jsonls, pyright, intelephense, jdtls, marksman`

**Formatters:** `prettier, stylua, black, php-cs-fixer, google-java-format, rustfmt, gofmt, shfmt`

Depois é só usar. `:w` já formata sozinho. 🎉

---

## ⌨️ Atalhos essenciais

> `C-` = Ctrl, `A-` = Alt, `<leader>` = Espaço. Lista completa com `<leader>fk`.

<details open>
<summary><b>🧭 Geral + Navegação</b></summary>

| Atalho | Ação |
|:---|:---|
| `Ctrl+s` / `:w` | salvar (e formata ✨) |
| `Ctrl+h/j/k/l` | mover entre janelas |
| `sv` / `sh` | split vertical / horizontal |
| `-` / `<leader>o-` | oil file manager / oil float |
| `s` / `S` | flash jump / treesitter jump |
| `Shift+Up/Down`, `J/K` visual | mover linha |
| `Ctrl+d/u`, `n/N` | meia-página / ocorrência (centralizado) |

</details>

<details>
<summary><b>🔍 Telescope + Harpoon + Busca</b></summary>

| Atalho | Ação |
|:---|:---|
| `<leader>ff` / `fg` / `fb` / `fh` | arquivos / texto (live grep) / buffers / help |
| `<leader>fc` / `fk` / `fm` / `ft` | colorscheme / keymaps / marks / TODOs |
| `<leader>ha` / `hh` / `1-4` | harpoon add / menu / pular pros 4 fixos |
| `<leader>sr` / `sw` / `sv` | grug-far replace / replace palavra / visual |
| `<leader>u` / `su` | undotree / undo telescope |

</details>

<details>
<summary><b>🧠 LSP + Completion + Snippets</b></summary>

| Atalho | Ação |
|:---|:---|
| `K` / `gd` / `gr` / `gI` | hover / definition / references / implementation |
| `<leader>ca` / `rn` / `D` | code action / rename / type definition |
| `[d` / `]d` / `<leader>xx` | erro anterior / próximo / lista (trouble) |
| `Ctrl+n/p`, `Ctrl+Space`, `Enter` | próxima/anterior sugestão, ativa, aceita |
| `Tab` | confirma / pula snippet |
| `Ctrl+e` (emmet) / snippets `fn/af/cl/imp/psvm/sout/!` | expande HTML/JS/PHP/Java |
| `gK` | hover flutuante bonito |
| `Ctrl+Click` / botão direito | go to definition / menu IDE |

</details>

<details>
<summary><b>🐛 Debug + 🧪 Testes + 🖥️ Terminal</b></summary>

| Atalho | Ação |
|:---|:---|
| `<leader>dB` / `dc` / `di` / `do` / `dO` / `dx` / `du` | breakpoint / continue / into / over / out / stop / UI |
| `<leader>tn` / `tf` / `ta` / `ts` / `to` | teste cursor / arquivo / tudo / summary / output |
| `Alt+t` | terminal flutuante (toggleterm) |
| `<leader>cf` | formatar manual • `:ConformInfo` diagnostica |

</details>

<details>
<summary><b>📁 Explorer + 🌿 Git + 🎯 Produtividade</b></summary>

| Atalho | Ação |
|:---|:---|
| `<leader>e` (`a/d/r/x/c/p/R/H`) | nvim-tree — criar/deletar/renomear/cortar/copiar/colar |
| `<leader>gg` | lazygit (`c` commit, `P` push, `p` pull, `q` sair) |
| `<leader>gd` / `gh` / `gH` / `gx` | diffview open / file history / branch history / close |
| `<leader>hw` / `hl` / `hp` | hop word / line / pattern |
| `Ctrl+d` (visual-multi) | multi-cursor — edita N ocorrências juntas |
| `<leader>o` / `co` / `cs` | dropbar breadcrumb / aerial outline / symbols (trouble) |
| `<leader>q` / `Q` | aerial toggle / telescope aerial |
| `zR` / `zM` | abre / fecha todos folds (ufo) |
| `<leader>cp` / `Ctrl+Shift+p` | paleta legendary 🔥 |
| `Ctrl+l/j/k/h` (copilot) | aceita / próxima / anterior / dispensa sugestão IA |

</details>

---

## 📂 Estrutura

```
%LOCALAPPDATA%\nvim\
├── init.lua                  # lazy + options + keymaps
└── lua/
    ├── config/
    │   ├── lazy.lua          # bootstrap lazy.nvim, leader=Espaço, catppuccin
    │   ├── options.lua       # 43 opts (2 spaces, undofile, folds ufo, etc)
    │   ├── keymaps.lua       # todos os atalhos
    │   └── diagnostic.lua    # virtual_text ●, float rounded
    └── plugins/              # 18 módulos
        ├── colorscheme.lua   # catppuccin mocha
        ├── lsp.lua           # mason + 11 servers (intelephense, jdtls, ts_ls...)
        ├── completion.lua    # nvim-cmp + LuaSnip + copilot-cmp
        ├── formatting.lua    # conform + nvim-lint
        ├── dap.lua           # debug python/node/js
        ├── test.lua          # neotest vitest/python/rust
        ├── treesitter.lua    # 24 langs
        ├── telescope.lua     # fuzzy finder
        ├── nvim-tree.lua     # explorer lateral
        ├── palette.lua       # legendary + harpoon + grug-far + undotree + diffview + oil + flash
        ├── ide.lua           # dropbar + aerial + scrollbar + ufo + hover + neoscroll
        ├── lualine.lua       # statusline global
        ├── extras.lua        # comment, autopairs, gitsigns, which-key, bufferline
        ├── extras2.lua       # surround, trouble, todo, fidget, toggleterm, lazygit, persistence, alpha
        ├── dev-tools.lua     # markdown-preview, dadbod (DB), copilot
        ├── productivity.lua  # multi-cursor, illuminate, hop, editorconfig
        ├── indent.lua        # indent-blankline
        └── visual.lua        # colorizer, noice, dressing
```

---

## 🎨 Customização

```lua
-- Trocar tema: :colorscheme tokyonight  ou  <leader>fc (telescope)

-- Adicionar LSP em lua/plugins/lsp.lua:
ensure_installed = { "lua_ls", "ts_ls", "seu_novo_lsp" }

-- Adicionar formatter em lua/plugins/formatting.lua:
formatters_by_ft = { php = { "php-cs-fixer" }, sua_lang = { "formatter" } }

-- Novo atalho em lua/config/keymaps.lua:
map("n", "<leader>x", "<cmd>Acao<CR>", { desc = "Descrição" })
```

Desabilitar plugin: renomeie pra `.bak` → `plugins/rest.lua.bak`.

---

## 🛠️ Problemas comuns

| Sintoma | Solução |
|:---|:---|
| 🔌 Plugins não instalaram | `:Lazy sync` → reinicie |
| 🧠 LSP sem autocomplete | `:Mason` → confira se server instalou • `:checkhealth lsp` |
| ✨ Não formatou ao salvar | `:ConformInfo` → instale formatter no Mason |
| 🔲 Ícones `�` | instale **Nerd Font** e ative no terminal |
| 🌳 Erro treesitter | `:TSUpdate` |
| 🐛 DAP não anexa | `:Mason` → instale `python` / `node2` / `js` adapter |
| 💥 Tudo quebrou | `:Lazy profile` + `:checkhealth` → abra issue com o log |

---

## 🌐 Notas por linguagem

- **PHP:** `intelephense` (não phpactor — quebra sem posix no Windows) + `php-cs-fixer` PSR-12 • `.blade.php` com highlight • `new` + `Ctrl+Space` lista classes
- **Java:** `jdtls` + `google-java-format` • `psvm` → main, `sout` → println • refactoring via `<leader>ca`
- **JS/TS:** `ts_ls` + `typescript-tools` + `eslint` • `:TslsOrganizeImports` organiza imports • `cl` → console.log
- **HTML/CSS:** `emmet_ls` — `Ctrl+e` expande (`div.container`, `ul>li*3`, `!` → HTML5)

---

<div align="center">

### 💜 Feito para devs fullstack que vivem no terminal

**[⬆ Voltar ao topo](#-minhas-config-nvim)**

⭐ estrela o repo • 🐛 achou bug? abre issue • 🤝 PRs bem-vindos!

`Neovim 0.10+ • lazy.nvim • Catppuccin Mocha • Windows 10/11`

</div>

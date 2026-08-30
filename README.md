# minhas_config_NVIM

Configuração completa e moderna do Neovim para Windows, com LSP, completion, Git, terminal integrado, debugging, testes e muito mais.

![Neovim](https://img.shields.io/badge/Neovim-0.10+-green?style=flat-square&logo=neovim)
![Lua](https://img.shields.io/badge/Lua-5.1-blue?style=flat-square&logo=lua)
![Windows](https://img.shields.io/badge/Windows-10%2F11-blue?style=flat-square&logo=windows)

---

## ✨ Features

- 🚀 **Setup completo** - Funciona após instalar, sem configuração extra
- 🎨 **Tema Catppuccin** - Suporte a light/dark mode
- 📁 **Explorer de arquivos** - NvimTree com ícones e Git
- 🔍 **Busca fuzzy** - Telescope para arquivos, texto e mais
- 💻 **LSP integrado** - Lua, TypeScript, HTML, CSS, JSON, Python
- ✅ **Autocompletion** - nvim-cmp com snippets
- 🌳 **Treesitter** - Syntax highlight melhorado
- 🐙 **Git integrado** - LazyGit + gitsigns
- 🖥️ **Terminal flutuante** - ToggleTerm
- 📊 **Barra de status** - Lualine com info de Git
- 🔔 **Notificações** - nvim-notify + noice.nvim
- 🎯 **Diagnostics** - Trouble para ver erros
- 💾 **Sessões** - Persistence para salvar estado
- 🤖 **Copilot** - Assistente IA com completion
- 🐛 **Debugger** - nvim-dap com UI
- 🧪 **Testes** - neotest para rodar testes
- ✨ **Formatação** - conform.nvim ao salvar
- 🔍 **Linting** - nvim-lint em tempo real
- 🔄 **Refactoring** - extrair, renomear, etc
- 🎯 **Hop** - pular pra qualquer lugar
- 🌈 **Colorizer** - cores hex/rgb inline
- 📝 **Markdown Preview** - preview no browser
- 🗄️ **Database** - dadbod para bancos de dados
- 🌐 **REST Client** - testar APIs
- 🐳 **Docker** - suporte Docker

---

## 📦 Plugins

### Core
| Plugin | Descrição |
|--------|-----------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Configuração LSP |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Gerenciador de LSPs |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Engine de completion |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippets engine |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Coleção de snippets |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlight |

### UI
| Plugin | Descrição |
|--------|-----------|
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Busca fuzzy |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | Explorer de arquivos |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Barra de status |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Abas |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Menu de atalhos |
| [catppuccin](https://github.com/catppuccin/nvim) | Tema |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | Tela inicial |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | Notificações |
| [noice.nvim](https://github.com/folke/noice.nvim) | UI de mensagens |
| [dressing.nvim](https://github.com/stevearc/dressing.nvim) | Inputs/selects bonitos |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Lista de diagnósticos |
| [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) | Guias de indentação |
| [rainbow-delimiters](https://github.com/HiPhish/rainbow-delimiters.nvim) | Parênteses coloridos |
| [nvim-colorizer](https://github.com/NvChad/nvim-colorizer.lua) | Cores inline |

### Produtividade
| Plugin | Descrição |
|--------|-----------|
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Sinais de Git |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | TODO/FIX highlight |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Manipular parênteses |
| [persistence.nvim](https://github.com/folke/persistence.nvim) | Salvar sessões |
| [vim-illuminate](https://github.com/RRethy/vim-illuminate) | Highlight palavras |
| [hop.nvim](https://github.com/smoka7/hop.nvim) | Pular pra lugar |
| [editorconfig](https://github.com/editorconfig/editorconfig-vim) | Respeitar .editorconfig |
| [refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim) | Refatorar código |
| [vim-visual-multi](https://github.com/mg979/vim-visual-multi) | Múltiplos cursores |

### Desenvolvimento
| Plugin | Descrição |
|--------|-----------|
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatação automática |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Linting em tempo real |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debugger |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | UI do debugger |
| [neotest](https://github.com/nvim-neotest/neotest) | Rodar testes |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminal integrado |

### Git
| Plugin | Descrição |
|--------|-----------|
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) | Interface Git |

### IA
| Plugin | Descrição |
|--------|-----------|
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | Assistente IA |
| [copilot-cmp](https://github.com/zbirenbaum/copilot-cmp) | Copilot no completion |

### Específicos
| Plugin | Descrição |
|--------|-----------|
| [markdown-preview](https://github.com/iamcco/markdown-preview.nvim) | Preview markdown |
| [vim-dadbod](https://github.com/tpope/vim-dadbod) | Client de banco de dados |
| [rest.nvim](https://github.com/rest-nvim/rest.nvim) | REST client |
| [nvim-docker](https://github.com/crispgm/nvim-docker) | Suporte Docker |

---

## 🛠️ Instalação

### Pré-requisitos

- [Neovim](https://neovim.io/) 0.10+
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (para LSPs)
- [Python](https://www.python.org/) (para pyright)

### Instalação automática (Windows)

```powershell
# Clonar repositório
git clone https://github.com/gabriellglrs/minhas_config_NVIM.git
cd minhas_config_NVIM

# Executar instalação
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\install-neovim.ps1
```

### Instalação manual

#### 1. Instalar Neovim

```powershell
winget install Neovim.Neovim
```

#### 2. Instalar Nerd Font

Download: [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip)

Extraia e instale as fontes `.ttf`.

#### 3. Instalar lazygit

```powershell
winget install JesseDuffield.lazygit
```

#### 4. Copiar configuração

```powershell
# Criar backup se existir
if (Test-Path "$env:LOCALAPPDATA\nvim") {
    Rename-Item "$env:LOCALAPPDATA\nvim" "$env:LOCALAPPDATA\nvim.bak"
}

# Copiar config
Copy-Item -Path "minhas_config_NVIM" -Destination "$env:LOCALAPPDATA\nvim" -Recurse -Force
```

#### 5. Instalar plugins

Abra o Neovim e aguarde a instalação automática:

```bash
nvim
```

Para verificar o status dos plugins:

```vim
:Lazy
```

#### 6. Instalar formatters e linters

```vim
:Mason
```

Instale os formatters e linters necessários.

---

## ⌨️ Atalhos

### Geral

| Atalho | Modo | Descrição |
|--------|------|-----------|
| `Espaço` | Normal | Leader key |
| `Ctrl+s` | Normal/Insert | Salvar |
| `Esc` | Qualquer | Sair do modo atual |
| `:w` | Command | Salvar |
| `:q` | Command | Fechar |
| `:wq` | Command | Salvar e fechar |
| `:q!` | Command | Fechar sem salvar |

### Explorer (NvimTree)

| Atalho | Descrição |
|--------|-----------|
| `Espaço + e` | Abrir/fechar explorer |
| `Enter` | Abrir arquivo |
| `a` | Criar arquivo |
| `d` | Deletar |
| `r` | Renomear |
| `x` | Cortar |
| `p` | Colar |
| `Ctrl+v` | Abrir na vertical |
| `Ctrl+h` | Abrir na horizontal |

### Busca (Telescope)

| Atalho | Descrição |
|--------|-----------|
| `Espaço + ff` | Encontrar arquivo |
| `Espaço + fg` | Buscar texto (live grep) |
| `Espaço + fb` | Listar buffers |
| `Espaço + fh` | Ajuda |
| `Espaço + fc` | Trocar corescheme |
| `Espaço + fk` | Ver todos os atalhos |
| `Espaço + fm` | Marcas |
| `Espaço + ft` | Buscar TODOs |

### Navegação

| Atalho | Descrição |
|--------|-----------|
| `h/j/k/l` | Esquerda/Baixo/Cima/Direita |
| `Ctrl+h/j/k/l` | Mover entre janelas |
| `Ctrl+d` | Meia página pra baixo |
| `Ctrl+u` | Meia página pra cima |
| `n` | Próxima ocorrência |
| `N` | Ocorrência anterior |
| `gg` | Início do arquivo |
| `G` | Fim do arquivo |

### Edição

| Atalho | Descrição |
|--------|-----------|
| `i` | Entrar em Insert |
| `x` | Deletar caractere |
| `dd` | Deletar linha |
| `yy` | Copiar linha |
| `p` | Colar |
| `u` | Desfazer |
| `Ctrl+r` | Refazer |
| `<` / `>` | Indentar (visual) |
| `J` / `K` | Mover linha (visual) |
| `Shift+Up/Down` | Mover linha |

### Buffer

| Atalho | Descrição |
|--------|-----------|
| `Espaço + wd` | Fechar buffer |
| `Espaço + bD` | Fechar todos |
| `Espaço + bl` | Buffer anterior |
| `Shift+Tab` | Próximo buffer |
| `Tab` | Buffer anterior |

### Terminal

| Atalho | Descrição |
|--------|-----------|
| `Alt+t` | Abrir/fechar terminal |
| `Ctrl+z` | Sair do terminal |

### Git

| Atalho | Descrição |
|--------|-----------|
| `Espaço + gg` | Abrir LazyGit |

### Diagnósticos

| Atalho | Descrição |
|--------|-----------|
| `Espaço + xx` | Lista de erros |
| `Espaço + xd` | Erros do documento |
| `Espaço + xw` | Erros do workspace |
| `[d` | Erro anterior |
| `]d` | Próximo erro |

### Debugger (DAP)

| Atalho | Descrição |
|--------|-----------|
| `Espaço + dB` | Toggle breakpoint |
| `Espaço + dc` | Continue |
| `Espaço + di` | Step into |
| `Espaço + do` | Step over |
| `Espaço + dO` | Step out |
| `Espaço + dr` | Toggle REPL |
| `Espaço + dl` | Run last |
| `Espaço + du` | Toggle DAP UI |
| `Espaço + dx` | Terminate |

### Testes

| Atalho | Descrição |
|--------|-----------|
| `Espaço + tn` | Run nearest test |
| `Espaço + tf` | Run file tests |
| `Espaço + ta` | Run all tests |
| `Espaço + ts` | Toggle summary |
| `Espaço + to` | Toggle output |
| `Espaço + tl` | Run last test |
| `Espaço + td` | Debug nearest test |

### Formatação

| Atalho | Descrição |
|--------|-----------|
| `Espaço + cf` | Format file |

### Hop

| Atalho | Descrição |
|--------|-----------|
| `Espaço + hw` | Hop word |
| `Espaço + hl` | Hop line |
| `Espaço + hp` | Hop pattern |

### Refactoring

| Atalho | Descrição |
|--------|-----------|
| `Espaço + rr` | Refactor (selecionar em visual) |

### REST Client

| Atalho | Descrição |
|--------|-----------|
| `Espaço + rr` | Run request |
| `Espaço + rl` | Run last request |
| `Espaço + rp` | Preview request |

### Sessão

| Atalho | Descrição |
|--------|-----------|
| `Espaço + sr` | Restaurar sessão |
| `Espaço + sl` | Última sessão |
| `Espaço + sd` | Parar de salvar |

### Mouse

| Ação | Descrição |
|------|-----------|
| Clicar | Posicionar cursor |
| Arrastar | Selecionar texto |
| Scroll | Rolar página |
| Botão direito | Menu de contexto |
| Ctrl+Click | Ir pra definição |
| Botão do meio | Colar |

---

## 📁 Estrutura

```
%LOCALAPPDATA%\nvim\
├── init.lua                    # Ponto de entrada
└── lua/
    ├── config/
    │   ├── keymaps.lua         # Atalhos personalizados
    │   ├── lazy.lua            # Config do lazy.nvim
    │   ├── options.lua         # Opções do Neovim
    │   └── diagnostic.lua      # Config de diagnósticos
    └── plugins/
        ├── colorscheme.lua     # Tema Catppuccin
        ├── completion.lua      # Autocompletion
        ├── dap.lua             # Debugger
        ├── dev-tools.lua       # Ferramentas de dev
        ├── extras.lua          # Plugins extras
        ├── extras2.lua         # Mais plugins extras
        ├── formatting.lua      # Formatação e linting
        ├── indent.lua          # Guias de indentação
        ├── lsp.lua             # Configuração LSP
        ├── lualine.lua         # Barra de status
        ├── nvim-tree.lua       # Explorer de arquivos
        ├── productivity.lua    # Produtividade
        ├── telescope.lua       # Busca fuzzy
        ├── test.lua            # Testes
        ├── treesitter.lua      # Syntax highlight
        └── visual.lua          # Plugins visuais
```

---

## 🎨 Customização

### Mudar tema

1. Abra o Telescope: `Espaço + fc`
2. Digite o nome do tema
3. Pressione Enter

Ou edite `lua/plugins/colorscheme.lua`:

```lua
vim.cmd.colorscheme("tokyonight")  -- ou outro tema
```

### Adicionar LSP

Edite `lua/plugins/lsp.lua` e adicione na lista:

```lua
ensure_installed = {
    "lua_ls",
    "ts_ls",
    "html",
    "cssls",
    "jsonls",
    "pyright",
    "rust_analyzer",  -- adicione aqui
},
```

### Adicionar atalho

Edite `lua/config/keymaps.lua`:

```lua
map("n", "<leader>x", "<cmd>Comando<CR>", { desc = "Descrição" })
```

### Desabilitar plugin

Renomeie o arquivo em `lua/plugins/` adicionando `.bak` no final.

---

## 🐛 Problemas

### Plugins não instalaram

```vim
:Lazy sync
```

### LSP não funciona

```vim
:Mason
```

Verifique se o LSP tá instalado.

### Ícones não aparecem

Instale uma [Nerd Font](https://www.nerdfonts.com/) e configure no terminal.

### Erro de syntax

```vim
:TSUpdate
```

### Formatação não funciona

```vim
:Mason
```

Instale o formatter necessário (prettier, black, stylua, etc).

### Debugger não funciona

```vim
:Mason
```

Instale o adaptador do debugger (python, node2, etc).

---

## 📝 Changelog

### v2.0.0
- Adicionado debugger (nvim-dap)
- Adicionado testes (neotest)
- Adicionado formatação (conform.nvim)
- Adicionado linting (nvim-lint)
- Adicionado refactoring
- Adicionado hop.nvim
- Adicionado vim-illuminate
- Adicionado vim-visual-multi (múltiplos cursores)
- Adicionado colorizer
- Adicionado noice.nvim
- Adicionado dressing.nvim
- Adicionado markdown-preview
- Adicionado vim-dadbod (database)
- Adicionado rest.nvim (REST client)
- Adicionado nvim-docker
- Adicionado copilot.lua + copilot-cmp
- Adicionado editorconfig
- Removido copilot.vim (substituído por copilot.lua)

### v1.0.0
- Configuração inicial
- LSP para Lua, TypeScript, HTML, CSS, JSON, Python
- Completion com snippets
- Explorer de arquivos
- Busca fuzzy
- Terminal integrado
- Git com LazyGit
- Tema Catppuccin

---

## 🤝 Contribuindo

1. Fork o projeto
2. Crie uma branch (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -m 'Adicionei nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## 🙏 Agradecimentos

- [Neovim](https://neovim.io/) - Editor incrível
- [LazyVim](https://www.lazyvim.org/) - Inspiração para a config
- [Catppuccin](https://catppuccin.com/) - Tema lindo
- Comunidade do Neovim no Reddit e Discord

---

## 📞 Contato

- **GitHub**: [@gabriellglrs](https://github.com/gabriellglrs)
- **Issues**: [Abrir issue](https://github.com/gabriellglrs/minhas_config_NVIM/issues)

---

Feito com ❤️ por Gabriel

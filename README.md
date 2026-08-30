# minhas_config_NVIM

Configuração completa e moderna do Neovim para Windows, com LSP, completion, Git, terminal integrado e muito mais.

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
- 🔔 **Notificações** - nvim-notify
- 🎯 **Diagnostics** - Trouble para ver erros
- 💾 **Sessões** - Persistence para salvar estado
- 🤖 **Copilot** - Assistente IA

---

## 📦 Plugins

| Plugin | Descrição |
|--------|-----------|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Configuração LSP |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Gerenciador de LSPs |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Engine de completion |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippets engine |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Coleção de snippets |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlight |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Busca fuzzy |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | Explorer de arquivos |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Barra de status |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Abas |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Sinais de Git |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Menu de atalhos |
| [catppuccin](https://github.com/catppuccin/nvim) | Tema |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Lista de diagnósticos |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | TODO/FIX highlight |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminal integrado |
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) | Interface Git |
| [copilot.vim](https://github.com/github/copilot.vim) | Assistente IA |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | Tela inicial |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | Notificações |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Manipular parênteses |
| [rainbow-delimiters](https://github.com/HiPhish/rainbow-delimiters.nvim) | Parênteses coloridos |
| [persistence.nvim](https://github.com/folke/persistence.nvim) | Salvar sessões |

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
        ├── extras.lua          # Plugins extras
        ├── extras2.lua         # Mais plugins extras
        ├── indent.lua          # Guias de indentação
        ├── lsp.lua             # Configuração LSP
        ├── lualine.lua         # Barra de status
        ├── nvim-tree.lua       # Explorer de arquivos
        ├── telescope.lua       # Busca fuzzy
        └── treesitter.lua      # Syntax highlight
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

---

## 📝 Changelog

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

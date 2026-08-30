# minhas_config_NVIM

Configuração completa do Neovim para Windows.

## Plugins

- **LSP** - Lua, TypeScript, HTML, CSS, JSON, Python
- **Completion** - nvim-cmp + snippets
- **Treesitter** - syntax highlight
- **Telescope** - busca fuzzy
- **NvimTree** - explorer de arquivos
- **Lualine** - barra de status
- **Bufferline** - abas
- **Gitsigns** - alterações git
- **Which-key** - menu de atalhos
- **Catppuccin** - tema
- **Trouble** - lista de diagnósticos
- **Todo Comments** - highlight de TODO/FIX
- **Toggleterm** - terminal integrado
- **LazyGit** - interface git
- **Copilot** - assistente IA
- **Alpha** - tela inicial
- **Notify** - notificações

## Instalação

### Windows
```powershell
# Instalar Neovim
winget install Neovim.Neovim

# Instalar lazygit
winget install JesseDuffield.lazygit

# Clonar config
git clone https://github.com/gabriellglrs/minhas_config_NVIM.git
Copy-Item -Path "minhas_config_NVIM\nvim" -Destination "$env:LOCALAPPDATA\nvim" -Recurse -Force

# Abrir Neovim e aguardar plugins
nvim
```

### Nerd Font
Instale a fonte [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip)

## Atalhos

| Atalho | Ação |
|--------|------|
| `Espaço + e` | Explorer |
| `Espaço + ff` | Buscar arquivo |
| `Espaço + fg` | Buscar texto |
| `Espaço + fb` | Listar buffers |
| `Espaço + ft` | Buscar TODOs |
| `Espaço + fc` | Trocar corescheme |
| `Espaço + fk` | Ver atalhos |
| `Alt + t` | Terminal |
| `Alt + j/k` | Próximo/anterior erro |
| `Ctrl + s` | Salvar |
| `Espaço + q` | Fechar |
| `Espaço + gg` | LazyGit |
| `Espaço + sr` | Restaurar sessão |

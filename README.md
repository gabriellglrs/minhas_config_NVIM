<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=4C89F8&height=120&section=header"/>


![LinkedIn cover - 27](https://github.com/user-attachments/assets/62db7d37-d6ad-450d-9cd1-f3ced029d379)

<br>
<br>

# minhas_config_NVIM

Configuração completa e profissional do Neovim para desenvolvimento web fullstack — PHP, Java, JavaScript, TypeScript, HTML, CSS, Vue, React e mais.

![Neovim](https://img.shields.io/badge/Neovim-0.10+-green?style=flat-square&logo=neovim)
![Lua](https://img.shields.io/badge/Lua-5.1-blue?style=flat-square&logo=lua)
![Windows](https://img.shields.io/badge/Windows-10%2F11-blue?style=flat-square&logo=windows)
![PHP](https://img.shields.io/badge/PHP-8.x-777BB4?style=flat-square&logo=php)
![Java](https://img.shields.io/badge/Java-17+-ED8B00?style=flat-square&logo=openjdk)
![JavaScript](https://img.shields.io/badge/JavaScript-ES6+-F7DF1E?style=flat-square&logo=javascript)
![TypeScript](https://img.shields.io/badge/TypeScript-5.x-3178C6?style=flat-square&logo=typescript)

---

## 📋 Índice

1. [Instalação](#-instalação)
2. [Visão Geral](#-visão-geral)
3. [LSP - Language Server Protocol](#-lsp---language-server-protocol)
4. [Completion](#-completion)
5. [Formatação](#-formatação)
6. [Linting](#-linting)
7. [Debugger](#-debugger)
8. [Testes](#-testes)
9. [Explorer de Arquivos](#-explorer-de-arquivos)
10. [Busca (Telescope)](#-busca-telescope)
11. [Git](#-git)
12. [Terminal](#-terminal)
13. [Produtividade](#-produtividade)
14. [Visual](#-visual)
15. [Linguagens Específicas](#-linguagens-específicas)
16. [Atalhos Completos](#-atalhos-completos)
17. [Estrutura](#-estrutura)
18. [Customização](#-customização)
19. [Solução de Problemas](#-solução-de-problemas)

---

## 🚀 Instalação

### Pré-requisitos

- [Neovim](https://neovim.io/) 0.10+
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (para LSPs JavaScript/TypeScript)
- [Python](https://www.python.org/) (para pyright)
- [PHP](https://www.php.net/) (para phpactor)
- [JDK 17+](https://adoptium.net/) (para jdtls)

### Instalação Automática (Windows)

```powershell
# Clonar repositório
git clone https://github.com/gabriellglrs/minhas_config_NVIM.git
cd minhas_config_NVIM

# Executar instalação
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\install-neovim.ps1
```

### Instalação Manual

```powershell
# 1. Instalar Neovim
winget install Neovim.Neovim

# 2. Instalar Nerd Font (FiraCode)
# Download: https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip

# 3. Instalar lazygit
winget install JesseDuffield.lazygit

# 4. Copiar configuração
Copy-Item -Path "minhas_config_NVIM" -Destination "$env:LOCALAPPDATA\nvim" -Recurse -Force

# 5. Abrir Neovim e aguardar plugins
nvim
```

### Instalar LSPs e Ferramentas

Após abrir o Neovim, rode `:Mason` e instale:

**LSPs:**
- `lua_ls` (Lua)
- `ts_ls` (TypeScript/JavaScript)
- `eslint` (ESLint)
- `html` (HTML)
- `cssls` (CSS)
- `emmet_ls` (Emmet)
- `jsonls` (JSON)
- `pyright` (Python)
- `phpactor` (PHP)
- `jdtls` (Java)
- `marksman` (Markdown)

**Formatters:**
- `prettier` (JS/TS/HTML/CSS/JSON)
- `stylua` (Lua)
- `black` (Python)
- `php-cs-fixer` (PHP)
- `google-java-format` (Java)

**Linters:**
- `eslint` (JS/TS)
- `phpcs` (PHP)
- `pylint` (Python)

---

## 📖 Visão Geral

| Componente | Plugin | Função |
|------------|--------|--------|
| LSP | nvim-lspconfig + mason | Autocompletion, go to definition, hover |
| Completion | nvim-cmp + LuaSnip | Sugestões de código e snippets |
| Formatação | conform.nvim | Formata automático ao salvar |
| Linting | nvim-lint | Mostra erros em tempo real |
| Debugger | nvim-dap | Breakpoints, step, inspect variables |
| Testes | neotest | Rodar testes direto no editor |
| Explorer | nvim-tree | Navegar arquivos |
| Busca | telescope | Buscar arquivos, texto, etc |
| Git | lazygit + gitsigns | Interface Git |
| Terminal | toggleterm | Terminal integrado |
| Syntax | treesitter | Highlight de código melhorado |
| Copilot | copilot.lua | Assistente IA |

---

## 🔧 LSP - Language Server Protocol

O LSP é o que faz o Neovim "entender" seu código. Ele fornece:

- **Autocompletion** - sugestões enquanto digita
- **Hover** - documentação ao passar o mouse (K)
- **Go to Definition** - pular pra definição (gd)
- **Find References** - onde algo é usado (gr)
- **Rename** - renomear variável/função (<leader>rn)
- **Code Actions** - correções automáticas (<leader>ca)

### Como usar

| Atalho | Ação | Quando usar |
|--------|------|-------------|
| `K` | Hover | Ver documentação de uma função/variável |
| `gd` | Go to Definition | Ir onde algo foi definido |
| `gr` | Find References | Ver onde algo é usado |
| `gI` | Implementation | Ver implementações |
| `<leader>ca` | Code Action | Corrigir erros automaticamente |
| `<leader>rn` | Rename | Renomear variável/função em todo projeto |
| `<leader>D` | Type Definition | Ver tipo de uma variável |
| `[d` | Diagnostic Prev | Ir pro erro anterior |
| `]d` | Diagnostic Next | Ir pro próximo erro |

### PHP

O **phpactor** fornece:
- Autocompletion de classes, métodos, propriedades
- Go to Definition de classes
- Find References de métodos
- Code Actions (importar classe, etc)
- Rename seguro

**Dica:** Ao digitar `new ` + `Ctrl+Space`, aparecem todas as classes disponíveis.

### Java

O **jdtls** (Eclipse JDT) fornece:
- Autocompletion completo
- Go to Definition
- Find References
- Refactoring (extract method, rename, etc)
- Debugging integrado
- Execução de testes

**Dica:** Use `<leader>ca` para importar classes automaticamente.

### JavaScript/TypeScript

O **ts_ls** + **eslint** fornecem:
- Autocompletion de imports
- Go to Definition
- Find References
- TypeScript specific (ver tipos, etc)
- ESLint errors inline

**Dica:** Use `:TSLspOrganizeImports` para organizar imports.

---

## ✅ Completion

O **nvim-cmp** mostra sugestões enquanto você digita.

### Como usar

| Atalho | Ação |
|--------|------|
| `Ctrl+n` | Próxima sugestão |
| `Ctrl+p` | Sugestão anterior |
| `Ctrl+Space` | Ativar manualmente |
| `Ctrl+e` | Fechar sugestões |
| `Enter` | Aceitar sugestão |
| `Ctrl+b` | Rolar docs pra cima |
| `Ctrl+f` | Rolar docs pra baixo |

### Snippets

Snippets são templates de código que expandem ao digitar. Exemplo:

1. Digite `fn` em JavaScript
2. Pressione `Tab`
3. Expande pra função completa

**Snippets disponíveis (friendly-snippets):**

**JavaScript/TypeScript:**
- `fn` → function completa
- `af` → arrow function
- `for` → for loop
- `fore` → for each
- `if` → if statement
- `cl` → console.log
- `imp` → import
- `exp` → export

**HTML:**
- `!` → estrutura HTML5 completa
- `div` → `<div></div>`
- `a` → `<a href=""></a>`
- `img` → `<img src="" alt="">`
- `ul` → lista não ordenada
- `form` → formulário

**PHP:**
- `pub` → public function
- `pro` → protected function
- `pri` → private function
- `cons` → const
- `arr` → array()
- `ret` → return

**Java:**
- `pub` → public method
- `psvm` → public static void main
- `sout` → System.out.println
- `for` → for loop

---

## ✨ Formatação

O **conform.nvim** formata seu código automaticamente ao salvar.

### Como funciona

- Ao dar `:w` (salvar), o código é formatado automaticamente
- Suporta: Prettier (JS/TS/HTML/CSS), Black (Python), php-cs-fixer (PHP), etc

### Como usar

| Atalho | Ação |
|--------|------|
| `<leader>cf` | Formatar arquivo manualmente |
| `:w` | Salvar e formatar automaticamente |
| `:ConformInfo` | Ver formatters instalados |

### Formatters por linguagem

| Linguagem | Formatter | O que faz |
|-----------|-----------|-----------|
| JavaScript | Prettier | Indentação, aspas, etc |
| TypeScript | Prettier | Indentação, aspas, etc |
| HTML | Prettier | Formatação HTML |
| CSS | Prettier | Formatação CSS |
| JSON | Prettier | Formatação JSON |
| Lua | stylua | Indentação Lua |
| Python | black | Formatação Python |
| PHP | php-cs-fixer | PSR-12, etc |
| Java | google-java-format | Google Java Style |

---

## 🔍 Linting

O **nvim-lint** mostra erros e warnings em tempo real.

### Como funciona

- Erros aparecem na barra lateral (signs)
- Warnings aparecem ao passar o mouse
- Atualiza ao salvar ou mudar de modo

### Linters por linguagem

| Linguagem | Linter | O que verifica |
|-----------|--------|----------------|
| JavaScript | ESLint | Regras do projeto |
| TypeScript | ESLint | Regras do projeto |
| PHP | phpcs | PSR-12, coding standards |
| Python | pylint | Boas práticas |
| Lua | luacheck | Boas práticas |

### Como ver erros

| Atalho | Ação |
|--------|------|
| `[d` | Ir pro erro anterior |
| `]d` | Ir pro próximo erro |
| `<leader>xx` | Lista de todos os erros |
| `<leader>xd` | Erros do arquivo atual |
| `<leader>xw` | Erros do projeto inteiro |

---

## 🐛 Debugger

O **nvim-dap** permite debugar código com breakpoints, step, etc.

### Como usar

| Atalho | Ação | O que faz |
|--------|------|-----------|
| `<leader>dB` | Toggle Breakpoint | Coloca/remove ponto de parada |
| `<leader>dc` | Continue | Roda até próximo breakpoint |
| `<leader>di` | Step Into | Entra dentro da função |
| `<leader>do` | Step Over | Pula pra próxima linha |
| `<leader>dO` | Step Out | Sai da função atual |
| `<leader>dr` | Toggle REPL | Abre console de debug |
| `<leader>dl` | Run Last | Roda último debug |
| `<leader>du` | Toggle UI | Abre/fecha painel de debug |
| `<leader>dx` | Terminate | Para o debug |

### Fluxo de Debug

1. Clique na margem esquerda pra colocar breakpoint (ou `<leader>dB`)
2. Inicie debug com `<leader>dc`
3. Use `<leader>di` / `<leader>do` pra navegar código
4. Veja variáveis no painel lateral
5. Use `<leader>dx` pra parar

### Suporte por linguagem

Para usar debugger, instale via `:Mason`:

- **JavaScript/Node:** `node-debug2-adapter`
- **Python:** `debugpy`
- **PHP:** `php-debug-adapter`

---

## 🧪 Testes

O **neotest** permite rodar testes direto no Neovim.

### Como usar

| Atalho | Ação | O que faz |
|--------|------|-----------|
| `<leader>tn` | Run Nearest | Roda teste mais próximo do cursor |
| `<leader>tf` | Run File | Roda todos os testes do arquivo |
| `<leader>ta` | Run All | Roda todos os testes do projeto |
| `<leader>ts` | Toggle Summary | Abre painel com status dos testes |
| `<leader>to` | Toggle Output | Abre saída dos testes |
| `<leader>tl` | Run Last | Roda último teste executado |
| `<leader>td` | Debug Test | Debuga o teste |

### Fluxo de Testes

1. Abra um arquivo de teste
2. Pressione `<leader>ts` pra ver resumo
3. Pressione `<leader>tn` pra rodar teste pontual
4. Se falhar, veja output com `<leader>to`
5. Debug com `<leader>td`

### Testes suportados

- **Vitest** (JavaScript/TypeScript)
- **pytest** (Python)
- **cargo test** (Rust)

---

## 📁 Explorer de Arquivos

O **nvim-tree** é o explorador de arquivos.

### Como usar

| Atalho | Ação |
|--------|------|
| `<leader>e` | Abrir/fechar explorer |
| `Enter` | Abrir arquivo |
| `a` | Criar arquivo/pasta |
| `d` | Deletar |
| `r` | Renomear |
| `x` | Cortar |
| `c` | Copiar |
| `p` | Colar |
| `R` | Refresh |
| `H` | Mostrar/ocultar arquivos ocultos |
| `Ctrl+v` | Abrir na vertical |
| `Ctrl+h` | Abrir na horizontal |
| `-` | Ir pro diretório pai |

### Dicas

- Clique nas pastas pra expandir/colapsar
- Clique nos arquivos pra abrir
- Use `a` pra criar: digite nome + `Enter`
- Use `d` pra deletar: seleciona + `d` + confirma

---

## 🔍 Busca (Telescope)

O **telescope** é uma ferramenta de busca poderosa.

### Como usar

| Atalho | Ação | O que busca |
|--------|------|-------------|
| `<leader>ff` | Find Files | Arquivos no projeto |
| `<leader>fg` | Live Grep | Texto em todos os arquivos |
| `<leader>fb` | Buffers | Arquivos abertos |
| `<leader>fh` | Help Tags | Ajuda do Neovim |
| `<leader>fc` | Colorscheme | Trocar tema |
| `<leader>fk` | Keymaps | Ver todos os atalhos |
| `<leader>fm` | Marks | Marcas |
| `<leader>ft` | TODOs | Buscar TODOs/FIXs |

### Dicas de Busca

- **Find Files:** digite parte do nome pra filtrar
- **Live Grep:** digite texto pra ver onde aparece em TODO projeto
- Use `Ctrl+j/k` pra navegar resultados
- Use `Enter` pra abrir resultado
- Use `Ctrl+v` pra abrir na vertical
- Use `Ctrl+h` pra abrir na horizontal

---

## 🐙 Git

### LazyGit

Interface gráfica de Git no terminal.

| Atalho | Ação |
|--------|------|
| `<leader>gg` | Abrir LazyGit |

**Dentro do LazyGit:**
- `Space` - selecionar
- `Enter` - adicionar/stash
- `c` - commit
- `P` - push
- `p` - pull
- `q` - sair

### Gitsigns

Mostra alterações de Git na barra lateral.

| Símbolo | Significado |
|---------|-------------|
| `+` | Linha adicionada |
| `~` | Linha modificada |
| `_` | Linha deletada |

---

## 🖥️ Terminal

O **toggleterm** abre um terminal flutuante.

| Atalho | Ação |
|--------|------|
| `<A-t>` | Abrir/fechar terminal |

**Dentro do terminal:**
- `<A-t>` ou `Ctrl+z` - sair do terminal (sem fechar)
- `Ctrl+c` - cancelar comando
- `exit` - fechar terminal

---

## 🎯 Produtividade

### Vim Visual Multi (Múltiplos Cursores)

Selecionar e editar múltiplas linhas ao mesmo tempo.

| Atalho | Ação |
|--------|------|
| `Ctrl+d` | Selecionar próxima ocorrência |
| `Ctrl+Shift+d` | Selecionar todas |
| `Tab` | Pular seleção |
| `Esc` | Sair do modo multi |

**Como usar:**
1. Posicione cursor numa palavra
2. Pressione `Ctrl+d` pra selecionar próxima ocorrência
3. Repita `Ctrl+d` pra selecionar mais
4. Digite pra editar todas ao mesmo tempo

### Hop (Pular pra qualquer lugar)

| Atalho | Ação |
|--------|------|
| `<leader>hw` | Hop Word - pular pra palavra |
| `<leader>hl` | Hop Line - pular pra linha |
| `<leader>hp` | Hop Pattern - pular pra padrão |

### Illuminate (Highlight palavras)

Automaticamente destaca todas as ocorrências da palavra sob o cursor.

### EditorConfig

Respeita o arquivo `.editorconfig` do projeto (indentação, encoding, etc).

---

## 🎨 Visual

### Catppuccin (Tema)

Troque o tema com `<leader>fc` ou `:colorscheme <nome>`.

**Temas populares:** catppuccin, tokyonight, gruvbox, dracula, kanagawa

### Noice (UI de mensagens)

Deixa as mensagens do Neovim mais bonitas.

### Dressing (Inputs bonitos)

Deixa os selects/inputs do Neovim mais bonitos.

### Colorizer (Cores inline)

Mostra cores hex/rgb/css inline no código.

Exemplo:
```css
color: #ff0000;  /* aparece vermelho */
background: rgb(0, 128, 0);  /* aparece verde */
```

### Alpha (Tela inicial)

Tela bonita com atalhos ao abrir o Neovim.

| Botão | Ação |
|-------|------|
| `f` | Buscar arquivo |
| `r` | Arquivos recentes |
| `w` | Buscar texto |
| `b` | Marcas |
| `t` | TODOs |
| `s` | Configurações |
| `q` | Sair |

---

## 🌐 Linguagens Específicas

### PHP

**LSP:** phpactor
**Formatter:** php-cs-fixer
**Linter:** phpcs

**Dicas:**
- Digite `new ` + `Ctrl+Space` pra ver classes disponíveis
- Use `<leader>ca` pra importar classe automaticamente
- Use `<leader>rn` pra renomear método em todo projeto
- php-cs-fixer formata no padrão PSR-12

**Estrutura Laravel:**
- Arquivos `.blade.php` têm syntax highlight com vim-blade
- Emmet funciona em templates Blade

### Java

**LSP:** jdtls
**Formatter:** google-java-format
**Linter:** (via LSP)

**Dicas:**
- Use `<leader>ca` pra importar classe
- Use `<leader>rn` pra renomear classe/método
- Debug funciona com nvim-dap

**Snippets:**
- `psvm` → `public static void main(String[] args)`
- `sout` → `System.out.println()`
- `for` → for loop completo

### JavaScript/TypeScript

**LSP:** ts_ls
**Formatter:** Prettier
**Linter:** ESLint

**Dicas:**
- TypeScript mostra tipos ao passar o mouse (K)
- ESLint mostra erros inline
- Prettier formata ao salvar

**Snippets:**
- `fn` → function
- `af` → arrow function
- `cl` → console.log
- `imp` → import

### HTML/CSS

**LSP:** html, cssls, emmet_ls
**Formatter:** Prettier
**Emmet:** `Ctrl+e` pra expandir

**Snippets Emmet:**
- `div.container` → `<div class="container"></div>`
- `ul>li*3` → lista com 3 itens
- `a[href=]` → link
- `img[src=]` → imagem
- `!` → estrutura HTML5

---

## ⌨️ Atalhos Completos

### Geral

| Atalho | Ação |
|--------|------|
| `Espaço` | Leader key |
| `Ctrl+s` | Salvar |
| `Esc` | Sair do modo atual |
| `:w` | Salvar |
| `:q` | Fechar |
| `:wq` | Salvar e fechar |
| `u` | Desfazer |
| `Ctrl+r` | Refazer |

### Navegação

| Atalho | Ação |
|--------|------|
| `h/j/k/l` | Esquerda/Baixo/Cima/Direita |
| `Ctrl+h/j/k/l` | Mover entre janelas |
| `Ctrl+d` | Meia página pra baixo |
| `Ctrl+u` | Meia página pra cima |
| `n` / `N` | Próxima/anterior ocorrência |
| `gg` / `G` | Início/fim do arquivo |

### Edição

| Atalho | Ação |
|--------|------|
| `i` | Entrar em Insert |
| `x` | Deletar caractere |
| `dd` | Deletar linha |
| `yy` | Copiar linha |
| `p` | Colar |
| `<` / `>` | Indentar (visual) |
| `J` / `K` | Mover linha (visual) |
| `Shift+Up/Down` | Mover linha |

### LSP

| Atalho | Ação |
|--------|------|
| `K` | Hover (documentação) |
| `gd` | Go to Definition |
| `gr` | Find References |
| `gI` | Implementation |
| `<leader>ca` | Code Action |
| `<leader>rn` | Rename |
| `<leader>D` | Type Definition |
| `[d` / `]d` | Diagnostic Prev/Next |

### Completion

| Atalho | Ação |
|--------|------|
| `Ctrl+n` / `Ctrl+p` | Navegar sugestões |
| `Enter` | Aceitar |
| `Ctrl+e` | Fechar |
| `Ctrl+Space` | Ativar |

### Explorer

| Atalho | Ação |
|--------|------|
| `<leader>e` | Abrir/fechar |
| `a` | Criar |
| `d` | Deletar |
| `r` | Renomear |
| `x` | Cortar |
| `c` | Copiar |
| `p` | Colar |

### Telescope

| Atalho | Ação |
|--------|------|
| `<leader>ff` | Find Files |
| `<leader>fg` | Live Grep |
| `<leader>fb` | Buffers |
| `<leader>fh` | Help |
| `<leader>fc` | Colorscheme |
| `<leader>fk` | Keymaps |
| `<leader>ft` | TODOs |

### Debugger

| Atalho | Ação |
|--------|------|
| `<leader>dB` | Toggle Breakpoint |
| `<leader>dc` | Continue |
| `<leader>di` | Step Into |
| `<leader>do` | Step Over |
| `<leader>dO` | Step Out |
| `<leader>dx` | Terminate |

### Testes

| Atalho | Ação |
|--------|------|
| `<leader>tn` | Run Nearest |
| `<leader>tf` | Run File |
| `<leader>ta` | Run All |
| `<leader>ts` | Toggle Summary |
| `<leader>to` | Toggle Output |

### Terminal

| Atalho | Ação |
|--------|------|
| `<A-t>` | Abrir/fechar terminal |

### Git

| Atalho | Ação |
|--------|------|
| `<leader>gg` | LazyGit |

### Formatação

| Atalho | Ação |
|--------|------|
| `<leader>cf` | Format File |

### Diagnósticos

| Atalho | Ação |
|--------|------|
| `<leader>xx` | Lista de erros |
| `<leader>xd` | Erros do documento |
| `<leader>xw` | Erros do workspace |

### Buffer

| Atalho | Ação |
|--------|------|
| `<leader>wd` | Fechar buffer |
| `<leader>bD` | Fechar todos |
| `<leader>bl` | Buffer anterior |

### Mouse

| Ação | Descrição |
|------|-----------|
| Clicar | Posicionar cursor |
| Arrastar | Selecionar texto |
| Scroll | Rolar página |
| Botão direito | Menu de contexto |
| Ctrl+Click | Go to Definition |

---

## 📁 Estrutura

```
%LOCALAPPDATA%\nvim\
├── init.lua                    # Ponto de entrada
├── lazy-lock.json              # Versões dos plugins
└── lua/
    ├── config/
    │   ├── keymaps.lua         # Atalhos personalizados
    │   ├── lazy.lua            # Config do lazy.nvim
    │   └── options.lua         # Opções do Neovim
    └── plugins/
        ├── colorscheme.lua     # Tema Catppuccin
        ├── completion.lua      # Autocompletion
        ├── dap.lua             # Debugger
        ├── dev-tools.lua       # Copilot, markdown, database
        ├── extras.lua          # Comentário, autopairs, git, etc
        ├── extras2.lua         # Trouble, todo, terminal, etc
        ├── formatting.lua      # Formatação e linting
        ├── indent.lua          # Guias de indentação
        ├── lsp.lua             # Configuração LSP (PHP, Java, JS, etc)
        ├── lualine.lua         # Barra de status
        ├── nvim-tree.lua       # Explorer de arquivos
        ├── productivity.lua    # Hop, illuminate, multi-cursor, etc
        ├── telescope.lua       # Busca fuzzy
        ├── test.lua            # Testes
        ├── treesitter.lua      # Syntax highlight
        └── visual.lua          # Colorizer, noice, dressing
```

---

## 🎨 Customização

### Mudar tema

```vim
" No comando:
:colorscheme tokyonight

" Ou use o Telescope:
Espaço + fc
```

### Adicionar LSP

1. Abra `:Mason`
2. Busque o LSP desejado
3. Instale
4. Adicione em `lua/plugins/lsp.lua`:

```lua
local servers = {
    "lua_ls",
    "ts_ls",
    "seu_novo_lsp",  -- adicione aqui
}
```

### Adicionar formatter

Edite `lua/plugins/formatting.lua`:

```lua
formatters_by_ft = {
    php = { "php-cs-fixer" },
    sua_linguagem = { "formatter" },
}
```

### Adicionar atalho

Edite `lua/config/keymaps.lua`:

```lua
map("n", "<leader>x", "<cmd>Comando<CR>", { desc = "Descrição" })
```

### Desabilitar plugin

Renomeie o arquivo adicionando `.bak`:

```powershell
Rename-Item "lua/plugins/rest.lua" "lua/plugins/rest.lua.bak"
```

---

## 🐛 Solução de Problemas

### Plugins não instalaram

```vim
:Lazy sync
```

### LSP não funciona

```vim
:Mason
```

Verifique se o LSP tá instalado.

### Formatação não funciona

```vim
:ConformInfo
```

Verifique se o formatter tá instalado.

### Ícones não aparecem

Instale uma [Nerd Font](https://www.nerdfonts.com/) e configure no terminal.

### Erro de syntax

```vim
:TSUpdate
```

### Debugger não funciona

```vim
:Mason
```

Instale o adaptador do debugger.

### Neovim lento

```vim
:Lazy profile
```

Veja quais plugins estão lentos.

### Resetar configuração

```powershell
Remove-Item -Recurse "$env:LOCALAPPDATA\nvim"
# Recopie a pasta nvim
```

---

## 📝 Changelog

### v3.0.0
- Adicionado suporte PHP (phpactor, php-cs-fixer, phpcs, blade)
- Adicionado suporte Java (jdtls, google-java-format)
- Adicionado emmet-vim (HTML/CSS abbreviations)
- Melhorado suporte JavaScript/TypeScript
- Removido rest.nvim e tailwind-tools.nvim (problemas)
- README completo com guia de uso

### v2.0.0
- Adicionado debugger, testes, formatação, linting
- Adicionado produtividade e plugins visuais
- Adicionado copilot.lua + copilot-cmp

### v1.0.0
- Configuração inicial
- LSP, completion, treesitter, telescope, nvim-tree

---

## 🤝 Contribuindo

1. Fork o projeto
2. Crie uma branch (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -m 'Adicionei nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

---

## 📄 Licença

Este projeto está sob a licença MIT.

---

## 🙏 Agradecimentos

- [Neovim](https://neovim.io/) - Editor incrível
- [LazyVim](https://www.lazyvim.org/) - Inspiração
- [Catppuccin](https://catppuccin.com/) - Tema lindo
- Comunidade do Neovim

---

## 📞 Contato

- **GitHub**: [@gabriellglrs](https://github.com/gabriellglrs)
- **Issues**: [Abrir issue](https://github.com/gabriellglrs/minhas_config_NVIM/issues)

---

Feito com ❤️ por Gabriel
<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=4C89F8&height=120&section=footer"/>

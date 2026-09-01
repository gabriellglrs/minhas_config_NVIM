return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    opts = {
      ensure_installed = {
        -- Lua
        "lua_ls",
        -- JavaScript/TypeScript
        "ts_ls",
        "eslint",
        -- HTML/CSS
        "html",
        "cssls",
        "emmet_ls",
        -- JSON
        "jsonls",
        -- Python
        "pyright",
        -- PHP
        "phpactor",
        -- Java
        "jdtls",
        -- Markdown
        "marksman",
      },
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      vim.diagnostic.config({
        virtual_text = { prefix = "●" },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        float = {
          focusable = false,
          style = "minimal",
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      })

      local ok, cmp = pcall(require, "cmp_nvim_lsp")
      local capabilities = ok and cmp.default_capabilities() or vim.lsp.protocol.make_client_capabilities()
      local servers = {
        "lua_ls",
        "ts_ls",
        "eslint",
        "html",
        "cssls",
        "emmet_ls",
        "jsonls",
        "pyright",
        "phpactor",
        "jdtls",
        "marksman",
      }
      for _, lsp in ipairs(servers) do
        vim.lsp.config(lsp, { capabilities = capabilities })
        vim.lsp.enable(lsp)
      end

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "<leader>fs", vim.lsp.buf.document_symbol, opts)
          vim.keymap.set("n", "<leader>fS", vim.lsp.buf.workspace_symbol, opts)
          vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
          vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
        end,
      })
    end,
  },
  -- PHP
  {
    "StanAngeloff/php.vim",
    ft = "php",
  },
  {
    "stephpy/vim-php-cs-fixer",
    ft = "php",
    cmd = "PhpCsFixer",
  },
  -- Java
  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
  },
  -- JavaScript/TypeScript extras
  {
    "pmizio/typescript-tools.nvim",
    ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  -- Emmet (HTML/CSS abbreviations)
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "scss", "php", "vue", "jsx", "tsx" },
    init = function()
      vim.g.user_emmet_leader_key = "<C-e>"
    end,
  },
  -- Blade (Laravel)
  {
    "jwalton512/vim-blade",
    ft = "blade",
  },
}

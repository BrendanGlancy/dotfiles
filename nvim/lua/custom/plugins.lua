local plugins = {
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    }
  },
  { "mfussenegger/nvim-jdtls", event = "BufRead" },
  {
    "mfussenegger/nvim-dap",
    config = function (_, _)
      require("core.utils").load_mappings("dap")
    end
  },
 {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    ft = { "python" },
    opts = function ()
      return require "custom.configs.null-ls"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- C/C++
        "clangd",
        "clang-format",
        "codelldb",
        -- Java
        "jdtls",
        "google-java-format",
        -- python
        "pyright",
        "black",
        "debugpy",
        "ruff",
        "mypy",
        -- go
        "gopls",
        -- javascript
        "prettier",
        "eslint-lsp",
        -- rust
        "rust-analyzer",
      }
    }
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function ()
      require("gopher").setup()
      require("core.utils").load_mappings("gopher")
    end,
    build = function ()
      vim.cmd [[ silent! GoUpdateBinaries ]]
    end
  }
}
return plugins

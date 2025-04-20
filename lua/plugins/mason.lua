-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls", -- your existing Lua server
        "pyright", -- Python
        "rust_analyzer", -- Rust
        "ts_ls",
        "tailwindcss",
        "bashls", -- Bash
        -- add others here as you need them
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua", -- Lua formatter
        "prettier", -- JS/TS/JSON/etc formatter
        "eslint_d", -- JS/TS linter (faster than eslint)
        "shellcheck", -- shell script linter
        -- add more null-ls sources here:
        -- e.g. "black" for Python, "flake8", "clang-format", etc.
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python", -- Python debugger via debugpy
        "js", -- for JavaScript debugging
        "codelldb",
      },
    },
  },
}

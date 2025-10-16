if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        "lua-language-server", -- install language servers
        "stylua", -- install formatters
        "debugpy", -- install debuggers
        "tree-sitter-cli", -- install any other package

        -- C/C++ Configs
        "clangd", -- LSP
        "clang-format", -- Formatter
        "codelldb", -- Debugger
      },
    },
  },
}

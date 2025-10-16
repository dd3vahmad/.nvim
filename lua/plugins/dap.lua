return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap = require "dap"
    dap.adapters.lldb = {
      type = "executable",
      command = vim.fn.exepath "lldb-vscode",
      name = "lldb",
    }

    dap.configurations.c = {
      {
        name = "Launch C Program",
        type = "lldb",
        request = "launch",
        program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
      },
    }
  end,
}

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts

  opts = {
    mappings = {
      n = {
        ["<leader>tt"] = {
          function() require("toggleterm").toggle(1) end,
          desc = "Toggle / Focus Terminal 1",
        },
        ["<leader>ph"] = { "<cmd>Telescope neovim-project history<CR>", desc = "Project History" },
        ["<leader>pd"] = { "<cmd>Telescope neovim-project discover<CR>", desc = "Discover Projects" },
        ["<Tab>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
        ["<S-Tab>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },
        ["<C-w>"] = { "<cmd>Bdelete<cr>", desc = "Close current buffer" },
        ["<C-a>"] = { "ggVG", desc = "Selects all in the current buffer" },
        ["<leader>r"] = {
          function()
            local file = vim.fn.expand "%:p"
            local out = vim.fn.expand "%:p:r"
            vim.cmd("!gcc " .. file .. " -o " .. out .. " && " .. out)
          end,
          desc = "Compile and run C file",
        },
      },
    },
  },
}

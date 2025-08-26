return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts

  opts = {
    mappings = {
      n = {
        ["<leader>ph"] = { "<cmd>Telescope neovim-project history<CR>", desc = "Project History" },
        ["<leader>pd"] = { "<cmd>Telescope neovim-project discover<CR>", desc = "Discover Projects" },
        ["<Tab>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
        ["<S-Tab>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },
        ["<C-w>"] = { "<cmd>Bdelete<cr>", desc = "Close current buffer" },
        ["<C-a>"] = { "ggVG", desc = "Selects all in the current buffer" },
      },
    },
  },
}

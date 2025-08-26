return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts

  opts = {
    mappings = {
      n = {
        ["<leader>ph"] = { "<cmd>Telescope neovim-project history<CR>", desc = "Project History" },
        ["<leader>pd"] = { "<cmd>Telescope neovim-project discover<CR>", desc = "Discover Projects" },
      },
    },
  },
}

return {
  {
    "coffebar/neovim-project",
    lazy = false,
    priority = 100,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "Shatur/neovim-session-manager",
      -- optional: "ibhagwan/fzf-lua", "folke/snacks.nvim"
    },
    init = function() vim.opt.sessionoptions:append "globals" end,
    opts = {
      projects = {
        "~/.config/*",
        "~/Desktop/dd3vahmad/_mine_/projects/*",
        "~/Desktop/dd3vahmad/_autocredit_/*",
        "~/Desktop/dd3vahmad/_hackatons_/*",
        "~/Desktop/dd3vahmad/_eionn_/*",
      },
      picker = { type = "telescope" },
      last_session_on_startup = true,
    },
    config = function(_, opts) require("neovim-project").setup(opts) end,
  },
}

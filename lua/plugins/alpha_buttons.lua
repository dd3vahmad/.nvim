return {
  "goolord/alpha-nvim",
  opts = function(_, opts) -- override the options using lazy.nvim
    opts.section.buttons.val = {
      opts.button("g", " Greet!", ':echo "Welcome the lord of neverland.....The AHMAD!"<CR>'),
      opts.button("f", " Find File", ":Telescope find_files<CR>"),
    }
  end,
}

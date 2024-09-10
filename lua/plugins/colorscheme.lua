return {
  -- Add Habamax
  { "habamax/vim-habamax" },

  -- Configure LazyVim to load Habamax
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "habamax",
    },
  },
}

return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        theme = "dragon",
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}

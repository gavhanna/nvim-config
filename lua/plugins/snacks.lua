return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true, -- show dotfiles by default
            ignored = true, -- show git-ignored files by default
          },
        },
      },
    },
  },
}

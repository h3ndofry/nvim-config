return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          follow_file = true,
          jump = { close = false },
          hidden = true,
          ignored = true,
        },
        files = {
          hidden = true,
          ignored = false,
        },
        grep = {
          hidden = true,
          ignored = false,
        },
      },
    },
  },
}

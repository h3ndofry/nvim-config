return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        always_show_bufferline = true,
        mode = "buffers",
        diagnostics = "nvim_lsp",
        show_close_icon = true,
        offsets = {
          {
            filetype = "snacks_layout_box",
            text = "File explorer",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    },
  },
}

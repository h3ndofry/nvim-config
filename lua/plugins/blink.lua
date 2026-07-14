return {
  "Saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<CR>"] = {}, -- disable Enter for completion
      ["<Tab>"] = { "select_and_accept", "fallback" }, -- fall back to tab
    },
  },
}

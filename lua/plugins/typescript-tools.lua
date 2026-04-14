return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {
    settings = {
      -- This helps specifically with Nx path resolution
      expose_as_code_action = "all",
      tsserver_max_memory = 8192,
      separate_diagnostic_server = true, -- Runs diagnostics on a separate thread
    },
  },
}

-- return {
--  {
--    "neovim/nvim-lspconfig",
--    opts = {
--      servers = {
--        vtsls = {
--          root_dir = require("lspconfig.util").root_pattern("tsconfig.json", "package.json"),
--        },
--      },
--    },
--  },
-- }

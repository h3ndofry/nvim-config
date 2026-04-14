return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {
    settings = {
      -- This helps specifically with Nx path resolution
      publish_diagnostic_on = "insert_leave",
      expose_as_code_action = "all",
      -- Important for large monorepos
      tsserver_max_memory = 8192,
      -- Runs diagnostics on a separate thread
      separate_diagnostic_server = true,
      -- Explicitly ignore Nx cache and build folders
      tsserver_file_preferences = {
        excludeDirectories = { ".nx", "dist", "node_modules" },
      },
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

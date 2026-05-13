return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-jest",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = function(_, opts)
    table.insert(
      opts.adapters,
      require("neotest-jest")({
        jestCommand = "pnpm jest",
        env = { CI = true },
        cwd = function()
                return vim.fn.getcwd()
              end,
     })
   )
  end,
}      

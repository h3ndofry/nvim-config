return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-jest",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = function(_, opts)
    local function project_root(file)
      local found =
        vim.fs.find({ "jest.config.ts", "jest.config.js" }, { path = vim.fs.dirname(file), upward = true })[1]

      return found and vim.fs.dirname(found or vim.fn.getcwd())
    end

    opts.adapters = opts.adapters or {}
    table.insert(
      opts.adapters,
      require("neotest-jest")({
        jestCommand = "pnpm jest --color",
        jestConfigFile = function(file)
          local root = project_root(file)
          local ts = root .. "/jest.config.ts"
          return vim.fn.filereadable(ts) == 1 and ts or root .. "/jest.config.js"
        end,
        cwd = function(file)
          return project_root(file)
        end,
        env = { CI = true },
      })
    )
  end,
}

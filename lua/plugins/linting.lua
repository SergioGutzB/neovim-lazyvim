return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      svelte = { "eslint_d" },
      python = { "pylint" },
    }

    -- Configura nvim-lint para usar el archivo .eslintrc.json si está presente
    lint.linters.eslint_d.cmd = "eslint_d"
    lint.linters.eslint_d.args = {
      "--stdin",
      "--stdin-filename",
      vim.fn.expand("%:t"),
      "--format",
      "json",
      "--config",
      -- vim.fn.expand(".eslintrc.json"), -- Ajusta el nombre del archivo según sea necesario
      vim.fn.glob(".eslintrc{.js,.json}"),
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}

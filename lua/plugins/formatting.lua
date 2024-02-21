return {
  "stevearc/conform.nvim",
  config = function()
    local conform = require("conform")
    local opts = {
      event = { "BufReadPre", "BufNewFile" },
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
      },
      formatters = {
        -- ... (Otras configuraciones de formateadores)

        -- Ajusta la configuración del formateador para usar ESLint
        eslint = {
          options = {
            -- config = vim.fn.expand(".eslintrc.json"), -- Ajusta el nombre del archivo según sea necesario
            config = vim.fn.glob(".eslintrc{.js,.json}"),
          },
        },

        -- ... (Otros formateadores)
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    }
    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range  (in visual mode)" })
    return opts
  end
}

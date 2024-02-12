return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      local ensure_installed = {
        -- python
        "ruff-lsp", -- lsp
        "ruff", -- linter (but used as formatter)
        "pyright", -- lsp
        "black", -- formatter
        "mypy", -- linter

        -- lua
        "lua-language-server", -- lsp
        "stylua", -- formatter

        -- shell
        "bash-language-server", -- lsp
        "shfmt", -- formatter
        -- "shellcheck",           -- linter

        -- yaml
        "yamllint", -- linter

        -- sql
        "sqlfluff", -- linter

        -- ruby
        "solargraph",

        -- rust
        "rust-analyzer", -- lsp
        -- rustfmt -- formatter (install via rustup)

        -- protobuf
        "buf-language-server", -- lsp (prototype, not feature-complete yet, rely on buf for now)
        "buf", -- formatter, linter
        "protolint", -- linter

        -- containers
        -- "hadolint", -- linter
        "dockerfile-language-server",
        "docker-compose-language-service",
      }

      -- extend opts.ensure_installed
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, ensure_installed)

      -- remove from opts.ensure_installed
      -- NOTE: this removes tooling because Mason provides a version
      -- built for intel machines on macOS. Instead, these are provided
      -- with the proper architecture via brew.
      local ensure_not_installed = { "shellcheck", "hadolint" }
      opts.ensure_installed = vim.tbl_filter(function(tool)
        return not vim.tbl_contains(ensure_not_installed, tool)
      end, opts.ensure_installed)
    end,
  },
}

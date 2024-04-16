return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "cpp",
        "css",
        "dockerfile",
        "gitignore",
        "javascript",
        "http",
        "ninja",
        "python",
        "rst",
        "ruby",
        "toml",
        "sql",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml"
      },
      config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)

        -- MDX
        vim.filetype.add({
          extension = {
            mdx = "mdx",
          },
        })
        vim.treesitter.language.register("markdown", "mdx")
      end,
    },
  },
}

return {
  {
    "SergioGutzB/regex_ai.nvim",
    dir = "~/projects/ai-regex.vim/",
    config = function()
      require("regex_ai").setup({
        shortcut = {
          generate = "<leader>rg",
          explain = "<leader>re",
        },
      })
    end,
  },
}

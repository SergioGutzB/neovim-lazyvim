return {
  "github/copilot.vim",

  vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false,
  }),
  vim.g.copilot_no_tab_map == true,
  vim.g.copilot_enabled == true,

  -- vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept-word)"),
  vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept-line)"),
  -- vim.keymap.nnoremap({ "<leader>cc", "<Plug>(copilot-accept-line)" }),
  vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept-line)"),
  vim.keymap.set("i", "<C-S-/>", "<Plug>(copilot-suggest)"),
  vim.keymap.set("i", "<C-S-[>", "<Plug>(copilot-previous)"),
  vim.keymap.set("i", "<C-S-]>", "<Plug>(copilot-next)"),
}

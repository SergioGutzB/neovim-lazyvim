#sd
return {
  {
    "kassio/neoterm",
    config = function()
      vim.g.neoterm_default_mod = 'horizontal'
      vim.g.neoterm_autoscroll = 1
      vim.g.neoterm_size = 15
      vim.g.neoterm_shell = 'zsh'

      -- vim.api.nvim_set_keymap('n', '<leader>tn', [[:Tnew<CR>:Texec zsh %:p:h<CR>]], { noremap = true, silent = true })
      -- vim.api.nvim_set_keymap('n', '<leader>tn', [[:Tnew<CR>:Tcd %:p:h<CR>:Texec zsh<CR>]], { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>tn', [[:cd %:p:h | Ttoggle<CR>:Texec zsh<CR>]], { noremap = true, silent = true })
      -- vim.api.nvim_set_keymap('n', '<leader>tn', [[:Ttoggle zsh %:p:h<CR>]], { noremap = true, silent = true })

    end,
  },
}

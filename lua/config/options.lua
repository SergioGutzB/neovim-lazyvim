-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = true

vim.o.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"

vim.cmd([[
  let g:conform_format_cmd = 'prettier'
  let g:conform_format_args = '--single-quote --parser babel'
]])

vim.wo.relativenumber = false

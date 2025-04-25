-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.opt_local.spell = true
vim.opt_global.spelllang = "en_us"

vim.g.lazyvim_check_order = false

-- Agregar un autocmd para recargar el plugin cuando se guarden archivos en ~/projects/codevim
-- vim.cmd([[
--   augroup ReloadCodevim
--     autocmd!
--     autocmd BufWritePost ~/projects/codevim/* lua reload_codevim()
--   augroup END
-- ]])

-- -- Función para recargar el plugin
-- function reload_codevim()
--   package.loaded["codevim"] = nil
--   require("codevim").setup({
--     index_files = { "*.lua", "*.py", "*.js", "*.ts" },
--     -- Otras opciones aquí...
--   })
--   print("Codevim plugin reloaded!")
-- end

-- autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 1000)

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.LanguageClient_serverCommands = {
  solargraph = {
    "solargraph",
    "socket",
    "--host",
    "127.0.0.1",
    "--port",
    "7658",
    "--no-stdio",
    "--log",
    "/tmp/solargraph.log",
  },
}

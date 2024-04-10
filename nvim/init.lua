require("config.options")

-- bootstrap lazy.nvim and plugins
require("config.lazy")

require("config.autocmds")
require("config.keymaps")
require("lsp")

vim.cmd("colorscheme tokyonight")

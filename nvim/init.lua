require("config.options")

-- bootstrap lazy.nvim and plugins
require("config.lazy")

require("config.autocmds")
require("config.keymaps")

vim.cmd("colorscheme tokyonight")


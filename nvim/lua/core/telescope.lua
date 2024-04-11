local ts = require('telescope')
local util = require('util')

util.map("n", "<leader>t", "<cmd>Telescope find_files<cr>", { silent = true, desc = "Find files" })
util.map("n", "<leader>b", "<cmd>Telescope buffers<cr>", { silent = true, desc = "Find open buffers" })
util.map("n", "<leader>r", "<cmd>Telescope live_grep<cr>", { silent = true, desc = "Ripgrep" })

ts.setup({
	require('telescope').setup {
		defaults = {
			-- Default configuration for telescope goes here:
			-- config_key = value,
			-- ..
		},
		pickers = {
			-- Default configuration for builtin pickers goes here:
			-- picker_name = {
			--   picker_config_key = value,
			--   ...
			-- }
			-- Now the picker_config_key will be applied every time you call this
			-- builtin picker
		},
		extensions = {
			-- Your extension configuration goes here:
			-- extension_name = {
			--   extension_config_key = value,
			-- }
			-- please take a look at the readme of the extension you want to configure
		}
	}
})

local util = require("util")

return {
	-- Flash {{{
	{
		"folke/flash.nvim",
		keys = {
			{ "<M-/>", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
			-- { "<leader>f", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter node" },
		},
	},
	-- }}}
	-- Zen Mode {{{
	{
		"folke/zen-mode.nvim",
		keys = {
			{ "<M-z>", mode = { "n", "x", "o" }, "<cmd>ZenMode<cr>", desc = "Zen Mode" },
			-- { "<leader>f", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter node" },
		},
		opts = {
			window = {
				backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
				-- height and width can be:
				-- * an absolute number of cells when > 1
				-- * a percentage of the width / height of the editor when <= 1
				-- * a function that returns the width or the height
				width = 120, -- width of the Zen window
				height = 1, -- height of the Zen window
				-- by default, no options are changed for the Zen window
				-- uncomment any of the options below, or add other vim.wo options you want to apply
				options = {
					-- signcolumn = "no", -- disable signcolumn
					number = false, -- disable number column
					-- relativenumber = false, -- disable relative numbers
					-- cursorline = false, -- disable cursorline
					cursorcolumn = false, -- disable cursor column
					foldcolumn = "0", -- disable fold column
					list = false,    -- disable whitespace characters
				},
			},

		},
	},
	-- }}}
}

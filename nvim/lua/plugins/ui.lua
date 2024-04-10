local util = require("util")

return {

	-- statusline {{{
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
			},
			sections = {
				lualine_b = {
				  "filename",
				},
				lualine_c = {
				  "branch",
				  "diff",
				  "diagnostics"
				},
			},
		},
	},
	-- }}}
	-- which-key {{{
	{
		"folke/which-key.nvim",
		opts = {
			plugins = { spelling = true },
			window = { border = "single" }
		},
		config = function(_, opts)
			local wk = require("which-key")
			wk.setup(opts)
			wk.register({
				c = {
					name = "Actions"
				},
				g = {
					name = "Git",
				},
			}, { prefix = "<leader>" })
		end,
	},
	-- }}}
	-- dashboard {{{
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup {
				theme = 'hyper',
				config = {
					week_header = {
						enable = true,
					},
					shortcut = {
						{ desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
						{
							icon = ' ',
							icon_hl = '@variable',
							desc = 'Files',
							group = 'Label',
							action = 'Telescope find_files',
							key = 'f',
						},
						{
							desc = '󰊢 Git commits',
							group = 'DiagnosticHint',
							action = 'Telescope git_commits',
							key = 'a',
						},
						{
							desc = ' Session',
							group = 'Number',
							action = 'lua require("persistence").load({ last = true})',
							key = 's',
						},
					},
					footer = {'I love deadlines. I love the whooshing noise they make as they go by.'}
				},
			}
		end,
	},
	-- }}}
	-- Colorizer {{{
	{
		"norcalli/nvim-colorizer.lua",
	},
	-- }}}
}

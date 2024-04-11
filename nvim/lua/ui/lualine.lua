local line = require('lualine')

line.setup({
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
})

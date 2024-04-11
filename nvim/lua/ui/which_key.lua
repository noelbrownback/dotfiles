local wk = require('which-key')


wk.setup({
	plugins = { spelling = true },
	window = { border = "single" }
})

wk.register({
	c = {
		name = "Actions"
	},
	g = {
		name = "Git",
	},
}, { prefix = "<leader>" })

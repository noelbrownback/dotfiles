return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = { style = "night" }
	},
	{
		"Mofiqul/dracula.nvim",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = { style = "night" }
	},

	{
		"maxmx03/solarized.nvim",
		config = function()
		  require("solarized").setup({
			theme = 'neo'
		  })
		end,
	},
	{
	  "catppuccin/nvim", name = "catppuccin", priority = 1000
	}
}

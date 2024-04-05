return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = { style = "storm" }
	},
	{
		"Mofiqul/dracula.nvim",
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

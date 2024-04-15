return {

	-- utils
	{ "nvim-lua/plenary.nvim",        lazy = true },
	{ "nvim-tree/nvim-web-devicons" },

	-- core
	{ "nvim-telescope/telescope.nvim" },
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
	},
	{ "lewis6991/gitsigns.nvim" },
	{ "chentoast/marks.nvim" },
	{ 'skywind3000/asyncrun.vim' },

	-- colorschemes
	{ "folke/tokyonight.nvim" },
	{ "Mofiqul/dracula.nvim" },

	-- ui
	{ "nvim-lualine/lualine.nvim" },
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
	},
	{ "goolord/alpha-nvim" },
	{ "norcalli/nvim-colorizer.lua" },
	{ "folke/which-key.nvim" },
	{ "folke/zen-mode.nvim" },
	{ "folke/persistence.nvim" },
	-- { "folke/flash.nvim" },

	-- code
	{ "numToStr/Comment.nvim" },
	{ "sindrets/diffview.nvim" },
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip"
		},
	},
	{
	  "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" },
	},
}

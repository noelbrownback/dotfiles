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
	{
	  "nvim-neo-tree/neo-tree.nvim",
	  branch = "v3.x",
	  dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	  }
	},

	-- code
	{
		"L3MON4D3/LuaSnip",
		build = vim.fn.has "win32" ~= 0 and "make install_jsregexp" or nil,
		dependencies = {
			"rafamadriz/friendly-snippets",
			"benfowler/telescope-luasnip.nvim",
		},
	},
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
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
	},
	{
		"jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" },
	},
	{
		'altermo/ultimate-autopair.nvim',
		event={'InsertEnter','CmdlineEnter'},
		branch='v0.6', --recommended as each new version will have breaking changes
		opts={
			--Config goes here
		},
		dependencies = {
		  "hrsh7th/cmp-nvim-lsp",
		},
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	}
}


local util = require("util")

return {

	-- Telescope {{{
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		keys = {
			{ "<leader>t", "<cmd>Telescope find_files<cr>", desc = "Find files" },
			{ "<leader>b", "<cmd>Telescope buffers<cr>",    desc = "Find open buffers" },
			{ "<leader>r", "<cmd>Telescope live_grep<cr>",  desc = "Ripgrep" },
			-- { "<leader>tm", "<cmd>Telescope marks<cr>",      desc = "Marks" },
			-- { "<leader>tn", "<cmd>Telescope notify<cr>",      desc = "Notifications" },
		},
		opts = {
		},
		config = function(_, opts)
			require("telescope").setup(opts)
		end,
	},
	-- }}}
	-- Treesitter {{{
	{
		"nvim-treesitter/nvim-treesitter",
		version = false, -- last release is way too old and doesn't work on Windows
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		keys = {
			-- { "<c-space>", desc = "Increment selection" },
			-- { "<bs>",      desc = "Schrink selection",  mode = "x" },
			{ "<leader>f", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter node" },
		},
		opts = {
			highlight = { enable = true },
			context_commentstring = { enable = true, enable_autocmd = false },
			ensure_installed = {
				"cpp",
				"bash",
				--"help",
				"html",
				"json",
				"lua",
				"markdown",
				"python",
				"query",
				"regex",
				"vim",
				"yaml",
			},
			-- incremental_selection = {
			-- 	enable = true,
			-- 	keymaps = {
			-- 		init_selection = "<C-space>",
			-- 		node_incremental = "<C-space>",
			-- 		scope_incremental = "<nop>",
			-- 		node_decremental = "<bs>",
			-- 	},
			-- },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
			require("nvim-treesitter.install").prefer_git = true,
			require("nvim-treesitter.install").update({ with_sync = true })()
		end,
	},
	-- }}}
	-- GitSigns {{{
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			signs = {
				add          = { text = '│' },
				change       = { text = '│' },
				delete       = { text = '_' },
				topdelete    = { text = '‾' },
				changedelete = { text = '~' },
				untracked    = { text = '┆' },
			},
			on_attach = function(buffer)
				local gs = package.loaded.gitsigns

				util.map("n", "]h", gs.next_hunk, { desc = "Next Hunk" })
				util.map("n", "[h", gs.prev_hunk, { desc = "Prev Hunk" })
				util.map({ "n", "v" }, "<leader>gs", ":Gitsigns stage_hunk<CR>", { desc = "Stage Hunk" })
				util.map({ "n", "v" }, "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Reset Hunk" })
				util.map("n", "<leader>gS", gs.stage_buffer, { desc = "Stage Buffer" })
				util.map("n", "<leader>gu", gs.undo_stage_hunk, { desc = "Undo Stage Hunk" })
				util.map("n", "<leader>gR", gs.reset_buffer, { desc = "Reset Buffer" })
				util.map("n", "<leader>gp", gs.preview_hunk, { desc = "Preview Hunk" })
				util.map("n", "<leader>gb", gs.blame_line, { desc = "Blame Line" })
				util.map("n", "<leader>gd", ":DiffviewOpen<CR>", { desc = "Diff View Open" })
			end,
		},
	},
	-- }}}
	-- Marks {{{
	{
		"chentoast/marks.nvim",
		opts = {
			default_mappings = true,
			builtin_marks = { ".", "<", ">", "^" },
		},
		config = function(_, opts)
			require("marks").setup(opts)
		end,
	},
	-- }}}
	-- AsyncRun {{{
	{
		"skywind3000/asyncrun.vim",
	},
	-- }}}

}

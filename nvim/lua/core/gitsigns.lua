local gs = require('gitsigns')
local util = require("util")

gs.setup({
	signs                             = {
		add          = { text = '┃' },
		change       = { text = '┃' },
		delete       = { text = '_' },
		topdelete    = { text = '‾' },
		changedelete = { text = '~' },
		untracked    = { text = '┆' },
	},
	signcolumn                        = true, -- Toggle with `:Gitsigns toggle_signs`
	numhl                             = false, -- Toggle with `:Gitsigns toggle_numhl`
	linehl                            = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff                         = false, -- Toggle with `:Gitsigns toggle_word_diff`
	watch_gitdir                      = {
		follow_files = true
	},
	auto_attach                       = true,
	attach_to_untracked               = false,
	current_line_blame                = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
	current_line_blame_opts           = {
		virt_text = true,
		virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
		ignore_whitespace = false,
		virt_text_priority = 100,
	},
	current_line_blame_formatter      = '<author>, <author_time:%Y-%m-%d> - <summary>',
	current_line_blame_formatter_opts = {
		relative_time = false,
	},
	sign_priority                     = 6,
	update_debounce                   = 100,
	status_formatter                  = nil,  -- Use default
	max_file_length                   = 40000, -- Disable if file is longer than this (in lines)
	preview_config                    = {
		-- Options passed to nvim_open_win
		border = 'single',
		style = 'minimal',
		relative = 'cursor',
		row = 0,
		col = 1
	},

	on_attach                         = function(buffer)
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
	-- },

})

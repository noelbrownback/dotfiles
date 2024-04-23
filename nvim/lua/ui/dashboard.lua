local dashboard = require('dashboard')

dashboard.setup({
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
			  footer = {'The dumbest people I know are those who know it all.'}
		  },
	  }
	)

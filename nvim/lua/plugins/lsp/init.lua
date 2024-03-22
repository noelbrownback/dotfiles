return {
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			{
				"hrsh7th/nvim-cmp",
				event = "InsertEnter",
				dependencies = {
					"hrsh7th/cmp-nvim-lsp",
					"hrsh7th/cmp-buffer",
				},
				config = function()
					local cmp = require("cmp")
					cmp.setup({
						window = {
							completion = cmp.config.window.bordered(),
							documentation = cmp.config.window.bordered(),
						},
						mapping = cmp.mapping.preset.insert({
							-- ['<Tab>'] = {
							--   i = function(fallback)
							-- 	local cmp = require('cmp')
							-- 	if cmp.visibile() then
							-- 	  cmp.confirm({select = true})
							-- 	else
							-- 	  fallback()
							-- 	end
							--   end,
							-- },
							['<C-b>'] = cmp.mapping.scroll_docs(-4),
							['<C-f>'] = cmp.mapping.scroll_docs(4),
							['<C-Space>'] = cmp.mapping.complete(),
							['<C-e>'] = cmp.mapping.abort(),
							['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept curently selected item. Set `select` to `false` to only confirm explicitly selected items.
						}),
						sources = cmp.config.sources({
							{ name = 'nvim_lsp' },
							-- { name = 'vsnip' }, -- For vsnip users.
							-- { name = 'luasnip' }, -- For luasnip users.
							-- { name = 'ultisnips' }, -- For ultisnips users.
							-- { name = 'snippy' }, -- For snippy users.
						}, {
							{ name = 'buffer' },
						})
					})
				end,
			},
		},
		opts = {
			diagnostics = {
				underline = true,
				update_in_insert = false,
				virtual_text = { spacing = 4, prefix = "●" },
				severity_sort = true,
				icons = {
					Error = " ",
					Warn = " ",
					Hint = "󰌵 ",
					Info = " ",
				},
			},
			-- Automatically format on save
			autoformat = false,
			-- LSP Servers {{{
			servers = {
				clangd = {},
				texlab = {},
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				},
				-- pylsp = {},
				pyright = {
				  settings = {
					python = {
					  analysis = {
							  autoSearchPaths = true,
							  useLibraryCodeForTypes = true,
							  diagnosticMode = 'openFilesOnly',
							},
						},
					},
			  },
			},

		},
		config = function(_, opts)
			-- setup autoformat
			require("plugins.lsp.format").autoformat = opts.autoformat

			-- setup formatting and keymaps
			require("util").on_attach(function(client, buffer)
				require("plugins.lsp.format").on_attach(client, buffer)
				require("plugins.lsp.keymaps").on_attach(client, buffer)
			end)

			for name, icon in pairs(opts.diagnostics.icons) do
				name = "DiagnosticSign" .. name
				vim.fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
			end
			vim.diagnostic.config(opts.diagnostics)

			local servers = opts.servers
			local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

			local function setup(server)
				local server_opts = vim.tbl_deep_extend("force", {
					capabilities = vim.deepcopy(capabilities),
				}, servers[server] or {})

				require("lspconfig")[server].setup(server_opts)
			end

			for server, server_opts in pairs(servers) do
				if server_opts then
					setup(server)
				end
			end
		end,
	},
}

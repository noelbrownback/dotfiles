local lspconfig = require('lspconfig')

lspconfig.pyright.setup {
	on_attach = function(client, bufnr)
		-- Use 'server_capabilities' instead of 'resolved_capabilities'
		local capabilities = client.server_capabilities

		-- Disabling document formatting if using null-ls for formatting to avoid conflicts
		if capabilities.documentFormattingProvider then
			capabilities.documentFormattingProvider = false
		end

		if capabilities.documentRangeFormattingProvider then
			capabilities.documentRangeFormattingProvider = false
		end
	end,
}

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.black.with({
			extra_args = { "--fast", "--line-length", "88" }
		}),
	},
})

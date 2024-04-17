local util = require("util")

require("lsp.snips")

-- Completion setup
require('lsp.cmp')

-- Setup language servers.
-- Specific server settings can be loaded (required) from their own file or 
-- simply added below.
require('lsp.lua_ls')
require('lsp.python')

-- lspconfig.pyright.setup{}

local opts = {
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
}

for name, icon in pairs(opts.diagnostics.icons) do
	name = "DiagnosticSign" .. name
	vim.fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
end
vim.diagnostic.config(opts.diagnostics)


-- This should be passed to the setup for each language server (Lua_ls, pyright, etc.)
-- This seems to work here but not exactly sure why ATM.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)

		-- Enable completion triggered by <c-x><c-o>
		-- vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		util.map("n", "<leader>cl", "<cmd>LspInfo<cr>", { silent = true, desc = "Lsp Info" })
		util.map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
		util.map("n", "<leader>cl", "<cmd>LspInfo<cr>", { desc = "Lsp Info" })
		util.map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
		util.map({ "n", "v" }, "<leader>cf", vim.lsp.buf.format, { desc = "Format" })
		util.map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Goto Definition" })
		util.map("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
		util.map("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })
		util.map("n", "gI", "<cmd>Telescope lsp_implementations<cr>", { desc = "Goto Implementation" })
		-- util.map( "n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", { desc = "Goto Type Definition" })
		util.map("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
		util.map("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev Diagnostic" })
		util.map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
	end,
})

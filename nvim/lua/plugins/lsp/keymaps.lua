local M = {}
local util = require("util")

function M.on_attach(client, buffer)
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
  -- util.map({ "n", "i" }, "<c-k>", vim.lsp.buf.signature_help, { desc = "Signature Help" })
end

return M

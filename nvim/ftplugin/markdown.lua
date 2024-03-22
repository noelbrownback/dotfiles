local util = require("util")
local opt = vim.opt

-- Call insert link automatically when we start typing a link
-- util.map("i", "[[", "<CMD>Telescope find_files<CR>", { desc = "Insert link", buffer = true })

-- vim.keymap.set("n", "gf", function()
  -- if require("obsidian").util.cursor_on_markdown_link() then
  --   return "<cmd>ObsidianFollowLink<CR>"
  -- else
  --   return "gf"
  -- end
-- end, { noremap = false, expr = true })


opt.wrap = true -- Enable line wrap for markdown
opt.breakindent = true
opt.breakindentopt = "shift:2"
opt.suffixesadd = ".md"

local util = require("util")

-- better indenting
util.map("v", "<", "<gv")
util.map("v", ">", ">gv")


util.map("n", "<leader><leader>", "<cmd>noh<cr>", { silent = true, desc = "Clear" })
util.map("n", "<leader>q", "<cmd>bd<cr>", { silent = true, desc = "Close" })
util.map("n", "<leader>Q", "<cmd>qa<cr>", { silent = true, desc = "Closed AHAHAHAH!" })

-- Lazy
util.map("n", "<leader>l", ":Lazy<CR>", { silent = true, desc = "Lazy" })


util.map("n", "<leader>ct", ":botright 15split | set winfixheight | terminal<CR>", { desc = "Load terminal" })
util.map("n", "<leader>ce", ":Sexplore<CR>", { desc = "Explore" })
util.map("n", "<leader>cs", ":setlocal spell spelllang=en_us<CR>", {desc = "Enable spell checker"})
util.map("n", "<leader>co", "<cmd>copen 15<cr>", { desc = "Open quickfix window" })


-- Windows
util.map("n", "<C-h>", "<C-w>h")
util.map("n", "<C-j>", "<C-w>j")
util.map("n", "<C-k>", "<C-w>k")
util.map("n", "<C-l>", "<C-w>l")

util.map("n", "<M-h>", "1<C-w><")
util.map("n", "<M-j>", "1<C-w>+")
util.map("n", "<M-k>", "1<C-w>-")
util.map("n", "<M-l>", "1<C-w>>")


-- 	Better tabbing
util.map("n", "<TAB>", "gt", { desc = "Next Buffer" })
util.map("n", "<S-TAB>", "gT", { desc = "Previous Buffer" })

-- Saving
util.map("n", "<C-s>", ":update<CR>", {desc = "Save"})


local luasnip = require("luasnip")

luasnip.config.setup({})

vim.tbl_map(
	function(type) require("luasnip.loaders.from_" .. type).lazy_load() end,
	{ "vscode", "snipmate", "lua" }
)

-- friendly-snippets - enable standardized comments snippets
luasnip.filetype_extend("typescript", { "tsdoc" })
luasnip.filetype_extend("javascript", { "jsdoc" })
luasnip.filetype_extend("lua", { "luadoc" })
luasnip.filetype_extend("python", { "pydoc" })
luasnip.filetype_extend("rust", { "rustdoc" })
luasnip.filetype_extend("cs", { "csharpdoc" })
luasnip.filetype_extend("java", { "javadoc" })
luasnip.filetype_extend("c", { "cdoc" })
luasnip.filetype_extend("cpp", { "cppdoc" })
luasnip.filetype_extend("php", { "phpdoc" })
luasnip.filetype_extend("kotlin", { "kdoc" })
luasnip.filetype_extend("ruby", { "rdoc" })
luasnip.filetype_extend("sh", { "shelldoc" })

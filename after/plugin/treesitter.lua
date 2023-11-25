local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = { "lua", "vim", "javascript", "html", "css", "php" },
	ignore_install = {},
	auto_install = false,
	modules = {},
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
	autoindent = { 	enable = true, },
})

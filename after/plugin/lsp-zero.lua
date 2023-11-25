local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

lsp_zero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {
		['tsserver'] = { 'javascript', 'typescript' },
		['intelephense'] = { 'php' },
	}
})

-- setup neovim lua configuration - this keeps those warnings like 'undefined global: "vim"' from popping up
require('neodev').setup()

require('mason').setup({})
-- lsp servers: https://langserver.org/#implementations-server
-- mason can handle language servers that don't need configuration
require('mason-lspconfig').setup({
	ensure_installed = {},
	handlers = {
		lsp_zero.default_setup,
	},
})

-- eslint setup - FIGURE OUT IF YOU CAN DO BETTER LINTING
require('lspconfig').eslint.setup({})

-- here is where you'll configure lsp servers manually
-- intelephense
require('lspconfig').intelephense.setup({
	settings = {
		intelephense = {
			stubs = {
				"bcmath",
				"bz2",
				"Core",
				"curl",
				"date",
				"dom",
				"fileinfo",
				"filter",
				"gd",
				"gettext",
				"hash",
				"iconv",
				"imap",
				"intl",
				"json",
				"libxml",
				"mbstring",
				"mcrypt",
				"mysql",
				"mysqli",
				"password",
				"pcntl",
				"pcre",
				"PDO",
				"pdo_mysql",
				"Phar",
				"readline",
				"regex",
				"session",
				"SimpleXML",
				"sockets",
				"sodium",
				"standard",
				"superglobals",
				"tokenizer",
				"xml",
				"xdebug",
				"xmlreader",
				"xmlwriter",
				"yaml",
				"zip",
				"zlib",
				"wordpress-stubs",
				"woocommerce-stubs",
				"acf-pro-stubs",
				"wordpress-globals",
				"wp-cli-stubs",
				"genesis-stubs",
				"polylang-stubs"
			}, -- stubs
			environment = {
				includePaths = { '/Users/noahselis/.composer/vendor/php-stubs/', '/Users/noahselis/.composer/vendor/wpsyntex/' }
			}, -- environment
			files = {
				maxSize = 5000000,
			}, -- files
			format = {
				enable = true,
			}, -- format
		}, -- intelephense
	}, -- settings
})

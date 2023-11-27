return {

	-- telescope - https://github.com/nvim-telescope/telescope.nvim
	{'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = {
			-- plenary - https://github.com/nvim-lua/plenary.nvim
			'nvim-lua/plenary.nvim'
		}
	},

	-- treesitter - https://github.com/nvim-treesitter/nvim-treesitter/
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	-- harpoon - https://github.com/ThePrimeagen/harpoon
	"ThePrimeagen/harpoon",


	-- comment - https://github.com/numToStr/Comment.nvim
	'numToStr/Comment.nvim',
	opts = {},

	-- rose-pine colorscheme - https://github.com/rose-pine/neovim
	'rose-pine/neovim',

	-- lsp-zero - https://github.com/VonHeikemen/lsp-zero.nvim/tree/v3.x
	{ 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' ,
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/nvim-cmp',
			'L3MON4D3/LuaSnip',
			'folke/neodev.nvim'
		}
	},

	-- nvim-cmp - https://github.com/hrsh7th/nvim-cmp
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
		-- for snippets
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',

	-- prettier - https://github.com/prettier/vim-prettier
	'prettier/vim-prettier',

	-- undotree - https://github.com/mbbill/undotree
	'mbbill/undotree',

	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',

	-- git/ github
	{'tpope/vim-fugitive', -- https://github.com/tpope/vim-fugitive - NOT CONFIGURED
		dependencies = { 'tpope/vim-rhubarb'}, -- https://github.com/tpope/vim-rhubarb - NOT CONFIGURED
	},

	-- TODO: configure lualine - https://github.com/nvim-lualine/lualine.nvim
	'nvim-lualine/lualine.nvim',

	-- TODO: configure copilot - https://github.com/github/copilot.vim
	"github/copilot.vim",

	-- TODO: get spotify running in neovim.
	-- the way I want to do it is:
	-- ✅ get a Spotify daemon runnning - https://github.com/Spotifyd/spotifyd 
	-- ✅ get a terminal client for spotify - https://github.com/Rigellute/spotify-tui
	--	get a nvim plugin that wraps that terminal client - https://github.com/KadoBOT/nvim-spotify

	{'KadoBOT/nvim-spotify',
		dependencies = { 'nvim-telescope/telescope.nvim' },
	},

	'tpope/vim-fugitive',
}

return {
	{ "dracula/vim",             name = "dracula",      priority = 1000 },
	{
		"windwp/nvim-autopairs",
		opts = {
			fast_wrap = {},
		},
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"mbbill/undotree",
		name = "undotree",
	},
	{ "tpope/vim-fugitive",      name = "fugitive" },
	{ "tpope/vim-endwise",       name = "endwise" },
	{ "preservim/nerdcommenter", name = "nerdcommenter" },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = true,
		opts = {
			ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true
			}
		}
	},
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = true,
		opts = {},
	},
	{ "fladson/vim-kitty" },
	{ "NMAC427/guess-indent.nvim" },
	{
		'lewis6991/gitsigns.nvim',
		opts = {
			signs = {
				add = { text = '+' },
				change = { text = '~' },
				delete = { text = '_' },
				topdelete = { text = '‾' },
				changedelete = { text = '~' },
			},
		},
	},
	{
		'echasnovski/mini.nvim',
		config = function()
			require('mini.ai').setup { n_lines = 500 }

			require('mini.surround').setup()

			local statusline = require 'mini.statusline'
			statusline.setup { use_icons = vim.g.have_nerd_font }

			---@diagnostic disable-next-line: duplicate-set-field
			statusline.section_location = function()
				return '%2l:%-2v'
			end

			--  Check out: https://github.com/echasnovski/mini.nvim
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	},


}

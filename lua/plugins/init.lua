return {
	{ "dracula/vim", name = "dracula", priority = 1000 },
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
		tag = "0.1.6",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"mbbill/undotree",
		name = "undotree",
		config = function()
			vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
		end,
	},
	{ "tpope/vim-surround", name = "surround" },
	{ "tpope/vim-fugitive", name = "fugitive" },
	{ "tpope/vim-endwise", name = "endwise" },
	{ "preservim/nerdcommenter", name = "nerdcommenter" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
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
}

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- DUH, Packer should update itself
    use 'jiangmiao/auto-pairs'   -- AutoBracket Pairs
    use 'tpope/vim-endwise'      -- Ending structures (if endif etc..)
    use 'andymass/vim-matchup'   -- Extends "%" key functionality
    use 'mbbill/undotree'
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'preservim/nerdcommenter'
    use 'jose-elias-alvarez/null-ls.nvim'
    --LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    --FUZZYFinder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    --TREESITTER
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- PRISMA.JS
    use 'prisma/vim-prisma'
    -- COLOR SCHEME
    use { 'catppuccin/nvim', as = "catppuccin" }
    -- CONTEXT PACKING
    use 'wellle/context.vim'
    -- COMPETITVE PROGRAMMING
    use 'p00f/cphelper.nvim'
    -- LATEX
    use 'lervag/vimtex'
    -- CODE FOLDING
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
end)

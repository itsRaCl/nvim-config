vim.g.catppuccin_flavour = "mocha"

require("catppuccin").setup({ styles = { comments = { "italic" }, } })

vim.cmd [[colorscheme catppuccin]]

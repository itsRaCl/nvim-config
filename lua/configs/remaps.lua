vim.g.mapleader = " "
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)

-- TELESCOPE REMAPS --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- UNDOTREE REMAPS --
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- OTHER REMAPS

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

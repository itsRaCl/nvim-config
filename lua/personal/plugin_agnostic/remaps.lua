-- OTHER REMAPS

vim.keymap.set("n", "<leader>n", vim.cmd.Ex)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")


-- Copy to + register
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- FUGITIVE
--
vim.keymap.set("n", "<leader>g", vim.cmd.Git)

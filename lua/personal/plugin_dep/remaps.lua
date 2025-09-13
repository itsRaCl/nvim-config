-- TELESCOPE REMAPS

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

-- UNDOTREE

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeFocus)

-- LSP
local autocmd = vim.api.nvim_create_autocmd
local augrp = vim.api.nvim_create_augroup

local lspremaps = augrp("LspRemaps", {})

autocmd("LspAttach", {
	group = lspremaps,
	callback = function(e)
		local opts = { buffer = e.buf }

		-- FUNCTION KEYMAPS
		vim.keymap.set("n", "<F2>", function()
			vim.lsp.buf.rename()
		end, opts)
		vim.keymap.set("n", "<F4>", function()
			vim.lsp.buf.code_action()
		end, opts)
		-- REFERENCES KEYMAPS
		vim.keymap.set("n", "grD", function()
			vim.lsp.buf.declaration()
		end, opts)
		vim.keymap.set("n", "gd", function()
			require('telescope.builtin').lsp_definitions()
		end, opts)
		vim.keymap.set("n", "gr", function()
			require('telescope.builtin').lsp_references()
		end, opts)
		vim.keymap.set("n", "gi", function()
			require('telescope.builtin').lsp_implementations()
		end, opts)
		vim.keymap.set("n", "gt", function()
			require('telescope.builtin').lsp_type_definitions()
		end, opts)

		-- SYMBOL KEYMAPS
		vim.keymap.set("n", "gO", function()
			require('telescope.builtin').lsp_document_symbols()
		end, opts)
		vim.keymap.set("n", "gW", function()
			require('telescope.builtin').lsp_dynamic_workspace_symbols()
		end, opts)

		-- DIAGNOSTICS
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_next()
		end, opts)
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end, opts)
	end,
})

-- NVIM TREE
vim.keymap.set("n", "<leader>n", require('nvim-tree.api').tree.toggle)

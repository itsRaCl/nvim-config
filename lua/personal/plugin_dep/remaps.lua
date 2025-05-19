-- TELESCOPE REMAPS

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fs", builtin.live_grep)
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
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, opts)
		vim.keymap.set("n", "gD", function()
			vim.lsp.buf.declaration()
		end, opts)
		vim.keymap.set("n", "gs", function()
			vim.lsp.buf.document_symbol()
		end, opts)
		vim.keymap.set("n", "gT", function()
			vim.lsp.buf.type_definition()
		end, opts)
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, opts)
		vim.keymap.set("n", "<leader>ws", function()
			vim.lsp.buf.workspace_symbol()
		end, opts)
		vim.keymap.set("n", "<leader>o", function()
			vim.diagnostic.open_float()
		end, opts)
		vim.keymap.set("n", "<F4>", function()
			vim.lsp.buf.code_action()
		end, opts)
		vim.keymap.set("n", "gr", function()
			vim.lsp.buf.references()
		end, opts)
		vim.keymap.set("n", "<F2>", function()
			vim.lsp.buf.rename()
		end, opts)
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_next()
		end, opts)
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end, opts)
		vim.keymap.set("n", "<F3>", function()
			vim.lsp.buf.format()
		end, opts)
	end,
})

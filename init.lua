local vscode = require("vscode")

vim.keymap.set('n', '<space>fm', function() vscode.action('editor.action.formatDocument') end)

vim.keymap.set('n', 'zc', function() vscode.action('editor.fold') end)

-- AUTOCMD

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ on_visual = false })
	end,
})

-- Use absolute line numbers during insert mode only
vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
	desc = "Display absolute line number in Insert mode",
	callback = function(opts)
		if vim.wo.number then
			vim.wo.relativenumber = opts.event == "InsertLeave"
		end
	end,
})


-- OPTS

-- disable mode display
vim.o.showmode = false

-- number and sign column
vim.o.number = true
vim.o.relativenumber = true

-- fold
-- vim.o.foldminlines = 10
-- vim.o.foldminlines = 10
-- vim.o.foldmethod = "marker"
-- vim.o.foldmethod = "manual"

-- casing
vim.o.ignorecase = true
vim.o.smartcase = true

-- leader
vim.g.mapleader = " "

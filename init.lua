require("basics")

local vscode = require("vscode")

vim.keymap.set('n', '<space>fm', function() vscode.action('editor.action.formatDocument') end)

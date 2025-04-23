local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>ls', builtin.buffers, { desc = 'Telescope find buffers' })

local nvimTreeFocusOrToggle = function ()
	local nvimTree=require("nvim-tree.api")
	local currentBuf = vim.api.nvim_get_current_buf()
	local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
	if currentBufFt == "NvimTree" then
		nvimTree.tree.toggle()
	else
		nvimTree.tree.focus()
	end
end

vim.keymap.set("n", "<C-e>", nvimTreeFocusOrToggle, {
	noremap = true,
	silent = true,
	desc = "Toggle NvimTree focus"
})

local notify_original = vim.notify
vim.notify = function(msg, ...)
	if
		msg
		and (
		msg:match 'position_encoding param is required'
		or msg:match 'Defaulting to position encoding of the first client'
		or msg:match 'multiple different client offset_encodings'
	)
	then
		return
	end
	return notify_original(msg, ...)
end

vim.keymap.set("n", "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Floating diagnostic" })
vim.keymap.set("n", "<leader>dh", vim.diagnostic.hide, { desc = "Hide diagnostic" })
vim.keymap.set("n", "<leader>ds", vim.diagnostic.show, { desc = "Show diagnostic" })

vim.keymap.set('n', 'U', vim.cmd.UndotreeToggle, { desc = 'Toggle undo-tree' })

vim.keymap.set('i', '<C-c>', '<Esc>')

vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

vim.keymap.set('n', '<leader>rr', ':Rest run<CR>')
vim.keymap.set('n', '<leader>rl', ':Rest last<CR>')

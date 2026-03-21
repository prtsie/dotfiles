return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	keys = {
		{ '<leader>gr', function() require('gitsigns').reset_hunk() end, desc = 'Reset hunk' },
		{ '<leader>gp', function() require('gitsigns').preview_hunk() end, desc = 'Preview hunk' },
		{ '<leader>gb', function() require('gitsigns').blame_line() end, desc = 'Blame line' },
	},
}

return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
        { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live grep' },
        { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
    },
    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = { "node_modules", "%.git/", "dist", "build" },
            },
        })
    end,
}

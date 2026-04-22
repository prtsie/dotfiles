return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
        { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live grep' },
        { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
        { '<leader>ft', '<cmd>Telescope treesitter<cr>', desc = 'Treesitter' },
        { '<leader>tt', '<cmd>Telescope builtin<cr>', desc = 'Builtin pickers' },
        { '<leader>fd', '<cmd>Telescope diagnostics<cr>', desc = 'Diagnostics' },
        { '<leader>fh', '<cmd>Telescope oldfiles<cr>', desc = 'Old files' },
        { 'gd', '<cmd>Telescope lsp_definitions<cr>', desc = 'Goto definitions' },
        { 'gD', '<cmd>Telescope lsp_type_definitions<cr>', desc = 'Goto type definitions' },
        { 'gi', '<cmd>Telescope lsp_implementations<cr>', desc = 'Goto implementations' },
        { 'gR', '<cmd>Telescope lsp_references<cr>', desc = 'Goto references' },
    },
    config = function()
        local actions = require("telescope.actions")
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = { "node_modules", "%.git/", "dist", "build" },
                mappings = {
                    i = {
                        ["<A-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })
    end,
}

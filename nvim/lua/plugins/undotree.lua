return {
    "mbbill/undotree",
    keys = {
        { 'U', '<cmd>UndotreeToggle<cr>', desc = 'Toggle Undotree' },
    },
    config = function()
        vim.g.undotree_SetFocusWhenToggle = 1
    end,
}

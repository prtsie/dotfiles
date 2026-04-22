-- === Keymaps ===

-- Leader keys must be set before any plugin loads
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

-- Navigation: keep cursor centered on Ctrl+U/D
map('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
map('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })

-- NvimTree focus/toggle
local nvimTreeFocusOrToggle = function()
    local nvimTree = require("nvim-tree.api")
    local currentBuf = vim.api.nvim_get_current_buf()
    local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
    if currentBufFt == "NvimTree" then
        nvimTree.tree.toggle()
    else
        nvimTree.tree.focus()
    end
end

map("n", "<C-e>", nvimTreeFocusOrToggle, {
    noremap = true,
    silent = true,
    desc = "Toggle NvimTree focus"
})

-- Diagnostic
map("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Floating diagnostic" })
map("n", "<leader>dh", vim.diagnostic.hide, { desc = "Hide diagnostic" })
map("n", "<leader>ds", vim.diagnostic.show, { desc = "Show diagnostic" })

-- Code action
map({ "n", "x" }, "<C-.>", function()
    require("tiny-code-action").code_action()
end, { noremap = true, silent = true })

-- Скопировать относительный путь:строка
vim.keymap.set('n', '<leader>cf', function()
    local path = vim.fn.expand("%")
    local line = vim.fn.line(".")
    local result = path .. ":" .. line
    vim.fn.setreg('+', result)
    print("Copied: " .. result)
end, { desc = 'Copy file path and line' })

-- Скопировать абсолютный путь:строка
vim.keymap.set('n', '<leader>cF', function()
    local path = vim.fn.expand("%:p")
    local line = vim.fn.line(".")
    local result = path .. ":" .. line
    vim.fn.setreg('+', result)
    print("Copied: " .. result)
end, { desc = 'Copy absolute file path and line' })

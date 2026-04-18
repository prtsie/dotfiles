-- === Neovim Options ===

-- Colors
vim.opt.termguicolors = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

local indent_group = vim.api.nvim_create_augroup("SetIndent", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "json", "js", "html", "css", "lua" }, -- список языков
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Clipboard
vim.o.clipboard = "unnamedplus"

-- Line numbers
vim.wo.relativenumber = true

-- Undo file
vim.opt.undofile = true

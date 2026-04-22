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
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

local indent_group = vim.api.nvim_create_augroup("SetIndent", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "jsonc", "json", "js", "html", "css", "lua" }, -- список языков
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

-- Folds
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = ""
vim.opt.foldlevel = 2
vim.opt.foldnestmax = 3

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  callback = function()
    vim.opt_local.foldlevel = 1
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.foldlevel = 3
  end,
})

require('config.lazy')
require('config.lsp')
require('config.keymaps')

local opt = vim.opt
local g = vim.g

vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true
opt.incsearch = true

opt.shiftwidth = 2
opt.tabstop = 2

opt.splitright = true
opt.clipboard = 'unnamedplus'
opt.completeopt = 'menuone,noselect'
opt.relativenumber = true

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
opt.foldenable = false

vim.diagnostic.config({
	virtual_text = { prefix = "●"},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ", 
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = " ",
			[vim.diagnostic.severity.INFO] = " ",
		},
	},
})

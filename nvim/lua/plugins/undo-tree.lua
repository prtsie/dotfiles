return {
  'mbbill/undotree',
	config = function ()
		vim.g.undotree_SetFocusWhenToggle = 1
		vim.g.undotree_TreeNodeShape = '●'
    vim.opt.undofile = true
    vim.opt.undodir = vim.fn.expand("~/.nvim/undodir")
	end
}

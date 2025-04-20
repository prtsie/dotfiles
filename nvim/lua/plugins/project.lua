return {
	"ahmedkhalf/project.nvim",
	config = function()
    require("project_nvim").setup {
			 patterns = { ".git", "*.sln", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
    }
  end
}

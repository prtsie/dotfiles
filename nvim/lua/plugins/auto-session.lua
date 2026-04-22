return {
  "rmagatti/auto-session",
  lazy = false,
  keys = {
    { "<leader>fs", "<cmd>AutoSession search<CR>", desc = "Session search" },
    { "<C-s>", "<cmd>AutoSession save<CR>", desc = "Save session" },
    { "<C-S-s>", "<cmd>AutoSession delete<CR>", desc = "Delete session" },
  },
  config = function()
    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
    require("auto-session").setup({
      auto_save = false,
    })
  end,
}

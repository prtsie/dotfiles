return {
  {
    "sainnhe/gruvbox-material",
    config = function()
      -- Настройки ДО применения темы
      vim.g.gruvbox_material_background = 'hard' -- 'hard', 'medium', 'soft'
      vim.g.gruvbox_material_foreground = 'material' -- 'material', 'mix', 'original'
      vim.g.gruvbox_material_enable_italic = 1 -- Курсив
      vim.g.gruvbox_material_enable_bold = 1 -- Жирный шрифт

      -- Применить тему
      vim.cmd.colorscheme('gruvbox-material')
    end,
  },
}

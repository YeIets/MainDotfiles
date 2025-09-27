 return {
    'sainnhe/gruvbox-material',
    lazy = false,
    config = function()
    vim.g.gruvbox_material_enable_italic = true
    vim.opt.termguicolors = true

    vim.opt.background = "dark"  -- or "light" if you want the light version
    vim.g.gruvbox_material_background = "hard" -- options: 'hard', 'medium', 'soft'
    vim.g.gruvbox_material_foreground = "mix" -- options: 'material', 'mix', 'original'
    vim.g.gruvbox_material_better_performance = 1

    vim.cmd.colorscheme('gruvbox-material')

    end,
}

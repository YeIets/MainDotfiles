return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = 'master',
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "go", "lua", "python" , "vim", "vimdoc", "markdown"}, -- add any langs you want
      highlight = {
        enable = true,       -- enable Treesitter-based highlighting
        additional_vim_regex_highlighting = false,
      },
    }
  end
}


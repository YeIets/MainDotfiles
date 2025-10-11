return {
  "metalelf0/black-metal-theme-neovim",
  lazy = false,
  config = function()
      require("black-metal").setup({
          -- Can be one of: bathory | burzum | dark-funeral | darkthrone | emperor | gorgoroth | immortal | impaled-nazarene | khold | marduk | mayhem | nile | taake | thyrfing | venom | windir
          theme = "venom",
          -- Can be one of: 'light' | 'dark', or set via vim.o.background
          variant = "dark",
    })
    require("black-metal").load()
  end,
}

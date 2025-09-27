return {
  "rebelot/kanagawa.nvim",
  lazy = false,        -- load immediately
  config = function()
    -- (optional) call setup with your preferences
    require("kanagawa").setup({
      -- your custom options here, all optional
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,     -- if true, it won’t set the background color
      dimInactive = false,
      terminalColors = true,
      theme = "wave",           -- default “wave”
      background = {
        dark = "wave",
        light = "lotus",
      },
      overrides = function(colors)
        return {
          -- e.g. override some highlight groups
          NormalFloat = { bg = colors.theme.ui.bg_m3 },
          FloatBorder = { fg = colors.theme.ui.fg_dim, bg = colors.theme.ui.bg_m3 },
        }
      end,
    })
  end,
}

